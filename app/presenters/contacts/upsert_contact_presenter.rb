# frozen_string_literal: true

module Contacts
  class UpsertContactPresenter < PresenterBase
    def initialize(contact)
      @contact = contact
    end

    def generate_response
      Tugo::Contacts::V1::UpsertContactResponse.new(
        contact: Tugo::Contacts::V1::Contact.new(
          id: proto_int64(@contact.id),
          salutation: proto_string(@contact.salutation),
          first_name: proto_string(@contact.first_name),
          last_name: proto_string(@contact.last_name),
          email: proto_string(@contact.email),
          phone: proto_string(@contact.phone),
          title: proto_string(@contact.title),
          creator_id: proto_int64(@contact.creator_id),
          owner_id: proto_int64(@contact.owner_id),
          modified_by_id: proto_int64(@contact.modified_by_id),
          master_lead_source_id: proto_int64(@contact.master_lead_source_id),
          is_converted_from_lead: proto_bool(@contact.is_converted_from_lead),
          is_do_not_call: proto_bool(@contact.is_do_not_call),
          birthday: proto_string(@contact.birthday),
          master_country_id: proto_int64(@contact.master_country_id),
          master_province_id: proto_int64(@contact.master_province_id),
          master_district_id: proto_int64(@contact.master_district_id),
          master_ward_id: proto_int64(@contact.master_ward_id),
          street: proto_string(@contact.street),
          description: proto_string(@contact.description),
          delete_flag: proto_int64(@contact.delete_flag),
          created_at: proto_string(@contact.created_at),
          updated_at: proto_string(@contact.updated_at)
        )
      )
    end
  end
end
