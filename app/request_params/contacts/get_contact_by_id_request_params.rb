# frozen_string_literal: true

module Contacts
  class GetContactByIdRequestParams < TugoCommon::RequestParamsBase
    attribute :contact_id, :integer

    def initialize(params)
      super(
        contact_id: params.contact_id&.value
      )
    end
  end
end
