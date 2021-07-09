# frozen_string_literal: true

module Contacts
  class GetContactByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      contact = Contact.find_by_id(@request_params.contact_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.contact.record_not_found') if contact.blank?

      @result = contact
    end
  end
end
