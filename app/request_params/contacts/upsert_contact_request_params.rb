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
        id: params.contact.id&.value,
        first_name: params.contact.first_name&.value,
        last_name: params.contact.last_name&.value,
        email: params.contact.email&.value,
        phone: params.contact.phone&.value,
        title: params.contact.title&.value,
        creator_id: params.contact.creator_id&.value,
        owner_id: params.contact.owner_id&.value,
        modified_by_id: params.contact.modified_by_id&.value,
        master_leadsource_id: params.contact.master_leadsource_id&.value,
        is_converted_from_lead: params.contact.is_converted_from_lead&.value,
        is_do_not_call: params.contact.is_do_not_call&.value,
        source: params.contact.source&.value,
        description: params.contact.description&.value
      )
    end
  end
end
