# frozen_string_literal: true

module Contacts
  class GetContactsService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header, jwt)
      @auth_header = auth_header
      @jwt = jwt
    end

    def run!
      contacts = if @jwt['params']['is_admin']
                   Contact.all
                 else
                   Contact.where_by_subordinate_users(get_subordinate_user_ids)
                 end

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.contact.record_not_found') if contacts.blank?

      @results = contacts
    end

    private

    def get_subordinate_user_ids
      response = TugoCommon::GrpcService.call_grpc(
        @auth_header,
        Settings.common.host,
        Tugo::Common::V1::UserService,
        :GetRoleBasedSubordinateUsers,
        Tugo::Common::V1::UserIdRequest.new(
          user_id: Google::Protobuf::Int64Value.new(value: @jwt['params']['id'].to_i)
        ).to_h
      ).message

      response.users.collect(&:id).map(&:value) << @jwt['params']['id'].to_i
    end
  end
end
