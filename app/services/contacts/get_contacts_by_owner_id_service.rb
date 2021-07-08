module Contacts
  class GetContactsByOwnerIdService
    include ActiveModel::Model

    attr_reader :results

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      contacts = Contact.where(owner_id: @request_params.owner_id)

      raise ActiveRecord::RecordNotFound, I18n.t('errors.messages.contact.record_not_found') if contacts.blank?
     
      @results = contacts
    end
  end
end