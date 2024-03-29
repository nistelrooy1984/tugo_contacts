# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tugo/organizations/v1/organization.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("tugo/organizations/v1/organization.proto", :syntax => :proto3) do
    add_message "tugo.organizations.v1.OrganizationListResponse" do
      repeated :organizations, :message, 1, "tugo.organizations.v1.Organization"
    end
    add_message "tugo.organizations.v1.Organization" do
      optional :id, :int64, 1
      optional :organization_name, :string, 2
      optional :website, :string, 3
      optional :phone, :string, 4
      optional :email, :string, 5
    end
  end
end

module Tugo
  module Organizations
    module V1
      OrganizationListResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tugo.organizations.v1.OrganizationListResponse").msgclass
      Organization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tugo.organizations.v1.Organization").msgclass
    end
  end
end
