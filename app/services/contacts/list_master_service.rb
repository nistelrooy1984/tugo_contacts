# frozen_string_literal: true

module Contacts
  class ListMasterService
    include ActiveModel::Model

    attr_reader :results

    def initialize(request_params)
      @request_params = request_params
    end

    def run!
      model = Object.const_get("Master::#{@request_params.table_name.classify}")

      @results = Tugo::Contacts::V1::Common::CommonMasterResponse.new(
        common_master: model.listing.map do |record|
          Tugo::Contacts::V1::Common::CommonMaster.new(
            id: Google::Protobuf::Int64Value.new(value: record.id),
            name: Google::Protobuf::StringValue.new(value: record.name)
          )
        end
      )
    end
  end
end
