# frozen_string_literal: true

module Contacts
  class GetContactsService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      contacts = Contact.all

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.contact.record_not_found') if contacts.blank?

      @results = contacts
    end
  end
end
