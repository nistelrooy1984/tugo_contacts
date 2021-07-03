module Contacts
    class ContactRequestParams < TugoCommon::RequestParamsBase
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
      attribute :created_at, :string
      attribute :updated_at, :string
  
      validates :last_name, presence: true
      validates :creator_id, numericality: { only_integer: true, greater_than: 0 }
      validates :owner_id, numericality: { only_integer: true, greater_than: 0 }
      validates :modified_by_id, numericality: { only_integer: true, greater_than: 0 }
  
      def initialize(contact)
        super(
          id: contact.id&.value,
          first_name: contact.first_name&.value,
          last_name: contact.last_name&.value,
          email: contact.email&.value,
          phone: contact.phone&.value,
          title: contact.title&.value,
          creator_id: contact.creator_id&.value,
          owner_id: contact.owner_id&.value,
          modified_by_id: contact.modified_by_id&.value,
          master_leadsource_id: contact.master_leadsource_id&.value,
          is_converted_from_lead: contact.is_converted_from_lead&.value,
          is_do_not_call: contact.is_do_not_call&.value,
          source: contact.source&.value,
          description: contact.description&.value,
          created_at: contact.created_at&.value,
          updated_at: contact.updated_at&.value
        )
      end
    end
  end