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

      contact.salutation = @request_params.salutation
      contact.first_name = @request_params.first_name
      contact.last_name = @request_params.last_name
      contact.email = @request_params.email
      contact.phone = @request_params.phone
      contact.title = @request_params.title
      contact.creator_id = @request_params.creator_id
      contact.owner_id = @request_params.owner_id
      contact.modified_by_id = @request_params.modified_by_id
      contact.master_lead_source_id = @request_params.master_lead_source_id
      contact.is_converted_from_lead = @request_params.is_converted_from_lead
      contact.is_do_not_call = @request_params.is_do_not_call
      contact.birthday = @request_params.birthday
      contact.master_country_id = @request_params.master_country_id
      contact.master_province_id = @request_params.master_province_id
      contact.master_district_id = @request_params.master_district_id
      contact.master_ward_id = @request_params.master_ward_id
      contact.street = @request_params.street
      contact.description = @request_params.description
      contact.delete_flag = @request_params.delete_flag | 0

      contact.save
      @result = contact
    end
  end
end
