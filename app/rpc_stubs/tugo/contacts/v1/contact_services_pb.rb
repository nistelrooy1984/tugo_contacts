# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: tugo/contacts/v1/contact.proto for package 'tugo.contacts.v1'

require 'grpc'
require 'tugo/contacts/v1/contact_pb'

module Tugo
  module Contacts
    module V1
      module ContactService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'tugo.contacts.v1.ContactService'

          # --
          # cnt_00001 Get Contact By Id
          # --
          rpc :GetContactById, ::Tugo::Contacts::V1::ContactIdRequest, ::Tugo::Contacts::V1::ContactResponse
          # --
          # cnt_00002 Get Contact By Owner
          # --
          rpc :GetContactByOwner, ::Tugo::Contacts::V1::ContactOwnerIdRequest, ::Tugo::Contacts::V1::ContactListResponse
          # --
          # cnt_00003 Get List Contacts
          # --
          rpc :GetContactList, ::Google::Protobuf::Empty, ::Tugo::Contacts::V1::ContactListResponse
          # --
          # cnt_00004 Upsert Contact
          # --
          rpc :UpsertContact, ::Tugo::Contacts::V1::UpsertContactRequest, ::Tugo::Contacts::V1::UpsertContactResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
