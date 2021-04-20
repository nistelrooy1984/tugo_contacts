# frozen_string_literal: true

module Contacts
  class ContactsController < ::Gruf::Controllers::Base
    bind ::Tugo::Contacts::V1::ContactService::Service

    def upsert_contact
      request_params = Contacts::UpsertContactRequestParams.new(request.message)
      request_params.validate!
      service = Contacts::UpsertContactService.new(request_params, nil)
      service.run!
      presenter = Contacts::UpsertContactPresenter.new(service.result)
      presenter.generate_response
      presenter.result
    end
  end
end
