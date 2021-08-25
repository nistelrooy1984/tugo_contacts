# frozen_string_literal: true

module Contacts
  class GetContactsByOwnerIdRequestParams < TugoCommon::RequestParamsBase
    attribute :owner_id, :integer

    def initialize(params)
      super(
        owner_id: params.owner_id&.value
      )
    end
  end
end
