# frozen_string_literal: true

module Contacts
  class MastersController < ::Gruf::Controllers::Base
    bind ::Tugo::Contacts::V1::MasterService::Service

    def list_master
      request_params = Contacts::MastersRequestParams.new(request.message)
      request_params.validate!
      service = Contacts::ListMasterService.new(request_params)
      service.run!
      service.results
    end
  end
end
