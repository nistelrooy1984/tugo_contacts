# frozen_string_literal: true

module Contacts
  class UpsertContactRequestParams < TugoCommon::RequestParamsBase
    attribute :id, :integer
    attribute :salutation, :string
    attribute :first_name, :string
    attribute :last_name, :string
    attribute :email, :string
    attribute :phone, :string
    attribute :title, :string
    attribute :creator_id, :integer
    attribute :owner_id, :integer
    attribute :modified_by_id, :integer
    attribute :master_lead_source_id, :integer
    attribute :is_converted_from_lead, :boolean
    attribute :is_do_not_call, :boolean
    attribute :birthday, :string
    attribute :master_country_id, :integer
    attribute :master_province_id, :integer
    attribute :master_district_id, :integer
    attribute :master_ward_id, :integer
    attribute :street, :string
    attribute :description, :string
    attribute :delete_flag, :integer

    # rubocop:disable Metrics/CyclomaticComplexity
    # rubocop:disable Metrics/PerceivedComplexity
    def initialize(params)
      super(
        id: params.contact.id&.value,
        salutation: params.contact.salutation&.value,
        first_name: params.contact.first_name&.value,
        last_name: params.contact.last_name&.value,
        email: params.contact.email&.value,
        phone: params.contact.phone&.value,
        title: params.contact.title&.value,
        creator_id: params.contact.creator_id&.value,
        owner_id: params.contact.owner_id&.value,
        modified_by_id: params.contact.modified_by_id&.value,
        master_lead_source_id: params.contact.master_lead_source_id&.value,
        is_converted_from_lead: params.contact.is_converted_from_lead&.value,
        is_do_not_call: params.contact.is_do_not_call&.value,
        birthday: params.contact.birthday&.value,
        master_country_id: params.contact.master_country_id&.value,
        master_province_id: params.contact.master_province_id&.value,
        master_district_id: params.contact.master_district_id&.value,
        master_ward_id: params.contact.master_ward_id&.value,
        street: params.contact.street&.value,
        description: params.contact.description&.value,
        delete_flag: params.contact.delete_flag&.value
      )
    end
    # rubocop:enable Metrics/CyclomaticComplexity
    # rubocop:enable Metrics/PerceivedComplexity
  end
end
