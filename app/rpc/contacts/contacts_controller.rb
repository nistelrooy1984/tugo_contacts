# frozen_string_literal: true

module Contacts
  class ContactsController < ::Gruf::Controllers::Base
    bind ::Tugo::Contacts::V1::ContactService::Service

    def upsert_contact
      request_params = Contacts::UpsertContactRequestParams.new(request.message)
      request_params.validate!
      service = Contacts::UpsertContactService.new(request_params, nil)
      service.run!
      presenter = Contacts::ContactPresenter.new(service.result)
      presenter.generate_response
    end

    def get_contacts_by_owner_id
      request_params = Contacts::GetContactsByOwnerIdRequestParams.new(request.message)
      service = Contacts::GetContactsByOwnerIdService.new(request_params, nil)
      service.run!
      presenter = Contacts::ContactsPresenter.new(service.results)
      presenter.generate_response
    end
  end
end
