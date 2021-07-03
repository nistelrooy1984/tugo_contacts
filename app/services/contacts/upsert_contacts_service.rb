module Contacts
  class UpsertContactsService
    attr_reader :results
    
    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      @results = @request_params.contacts.each_with_object([]) do |rec, arr|
        contact = Contact.find_or_initialize_by(id: rec.id)

        contact.first_name = rec.first_name
        contact.last_name = rec.last_name
        contact.email = rec.email
        contact.phone = rec.phone
        contact.title = rec.title
        contact.creator_id = rec.creator_id
        contact.owner_id = rec.owner_id
        contact.modified_by_id = rec.modified_by_id
        contact.master_leadsource_id = rec.master_leadsource_id
        contact.is_converted_from_lead = rec.is_converted_from_lead
        contact.is_do_not_call = rec.is_do_not_call
        contact.source = rec.source
        contact.description = rec.description

        contact.save
        arr << contact
      end
    end
  end
end