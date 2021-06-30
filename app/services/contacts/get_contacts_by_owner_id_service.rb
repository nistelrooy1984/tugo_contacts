# frozen_string_literal: true

module Contacts
  class GetContactsByOwnerIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      contacts = Contact.where(owner_id: @request_params.owner_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.contact.record_not_found') if contacts.blank?
      
      @result = contacts
    end
  end
end