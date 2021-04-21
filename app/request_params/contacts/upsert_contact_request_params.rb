# frozen_string_literal: true

module Contacts
  class UpsertContactRequestParams < TugoCommon::RequestParamsBase
    attribute :id, :integer
    attribute :first_name, :string
    attribute :last_name, :string
    attribute :email, :string
    attribute :phone, :string
    attribute :title, :string
    attribute :creator_id, :integer
    attribute :owner_id, :integer
    attribute :modified_by_id, :integer
    attribute :master_leadsource_id, :integer
    attribute :is_converted_from_lead, :boolean
    attribute :is_do_not_call, :boolean
    attribute :source, :string
    attribute :description, :string

    def initialize(params)
      super(
        id: params.contact.id.positive? ? params.contact.id : nil,
        first_name: params.contact.first_name,
        last_name: params.contact.last_name,
        email: params.contact.email,
        phone: params.contact.phone,
        title: params.contact.title,
        creator_id: params.contact.creator_id,
        owner_id: params.contact.owner_id,
        modified_by_id: params.contact.modified_by_id,
        master_leadsource_id: params.contact.master_leadsource_id,
        is_converted_from_lead: params.contact.is_converted_from_lead,
        is_do_not_call: params.contact.is_do_not_call,
        source: params.contact.source,
        description: params.contact.description
      )
    end
  end
end
