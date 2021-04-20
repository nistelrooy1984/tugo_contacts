# frozen_string_literal: true

module Contacts
  class UpsertContactPresenter < PresenterBase
    def initialize(contact)
      @contact = contact
    end

    def generate_response
      contact = Tugo::Contacts::V1::UpsertContactResponse.new(
        id: @contact.id,
        first_name: @contact.first_name,
        last_name: @contact.last_name,
        email: @contact.email,
        phone: @contact.phone,
        title: @contact.title,
        creator_id: @contact.creator_id,
        owner_id: @contact.owner_id,
        modified_by_id: @contact.modified_by_id,
        master_leadsource_id: @contact.master_leadsource_id,
        is_converted_from_lead: @contact.is_converted_from_lead,
        is_do_not_call: @contact.is_do_not_call,
        source: @contact.source,
        description: @contact.description,
        created_at: @contact.created_at.to_s,
        updated_at: @contact.updated_at.to_s
      )

      Tugo::Contacts::V1::UpsertContactResponse.new(
        contact: contact
      )
    end
  end
end
