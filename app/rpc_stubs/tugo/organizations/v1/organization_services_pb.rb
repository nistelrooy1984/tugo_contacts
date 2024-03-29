# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: tugo/organizations/v1/organization.proto for package 'tugo.organizations.v1'

require 'grpc'
require 'tugo/organizations/v1/organization_pb'

module Tugo
  module Organizations
    module V1
      module OrganizationService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'tugo.organizations.v1.OrganizationService'

          rpc :GetOrganizationList, ::Google::Protobuf::Empty, ::Tugo::Organizations::V1::OrganizationListResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
