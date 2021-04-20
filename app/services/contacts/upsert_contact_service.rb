# frozen_string_literal: true

module Contacts
  class UpsertContactService
    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      contact = Contact.find_or_initialize_by(id: @request_params.id)

      contact.first_name = @request_params.first_name
      contact.last_name = @request_params.last_name
      contact.email = @request_params.email
      contact.phone = @request_params.phone
      contact.title = @request_params.title
      contact.creator_id = @request_params.creator_id
      contact.owner_id = @request_params.owner_id
      contact.modified_by_id = @request_params.modified_by_id
      contact.master_leadsource_id = @request_params.master_leadsource_id
      contact.is_converted_from_lead = @request_params.is_converted_from_lead
      contact.is_do_not_call = @request_params.is_do_not_call
      contact.source = @request_params.source
      contact.description = @request_params.description

      @result = contact.save
    end
  end
end
