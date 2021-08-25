# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tugo/leads/v1/lead.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file('tugo/leads/v1/lead.proto', syntax: :proto3) do
    add_message 'tugo.leads.v1.LeadListResponse' do
      repeated :leads, :message, 1, 'tugo.leads.v1.Lead'
    end
    add_message 'tugo.leads.v1.Lead' do
      optional :id, :int64, 1
      optional :lead_no, :string, 2
      optional :last_name, :string, 3
      optional :first_name, :string, 4
      optional :phone, :string, 5
      optional :email, :string, 6
      optional :gender, :int32, 7
    end
  end
end

module Tugo
  module Leads
    module V1
      LeadListResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tugo.leads.v1.LeadListResponse').msgclass
      Lead = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tugo.leads.v1.Lead').msgclass
    end
  end
end
