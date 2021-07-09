module Contacts
  class UpsertContactsRequestParams < TugoCommon::RequestParamsBase
    attribute :contacts

    def initialize(params)
      contacts = get_contacts(params)

      super(
        contacts: contacts
      )
    end

    private

    def get_contacts(params)
      params.contacts.each_with_object([]) do |contact, arr|
        arr << Contacts::ContactRequestParams.new(contact)
      end
    end
  end
end