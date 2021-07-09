# frozen_string_literal: true

module Contacts
  class ContactPresenter < PresenterBase
    def initialize(contact)
      @contact = contact
    end

    def generate_response
      Tugo::Contacts::V1::ContactResponse.new(
        contact: Tugo::Contacts::V1::Contact.new(
          id: proto_int64(@contact.id),
          first_name: proto_string(@contact.first_name),
          last_name: proto_string(@contact.last_name),
          email: proto_string(@contact.email),
          phone: proto_string(@contact.phone),
          title: proto_string(@contact.title),
          creator_id: proto_int64(@contact.creator_id),
          owner_id: proto_int64(@contact.owner_id),
          modified_by_id: proto_int64(@contact.modified_by_id),
          master_leadsource_id: proto_int64(@contact.master_leadsource_id),
          is_converted_from_lead: proto_bool(@contact.is_converted_from_lead),
          is_do_not_call: proto_bool(@contact.is_do_not_call),
          source: proto_string(@contact.source),
          description: proto_string(@contact.description),
          created_at: proto_string(@contact.created_at),
          updated_at: proto_string(@contact.updated_at)
        )
      )
    end
  end
end
