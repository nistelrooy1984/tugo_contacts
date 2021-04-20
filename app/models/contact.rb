# frozen_string_literal: true

# == Schema Information
#
# Table name: contacts
#
#  id(ID)
#  firstname(First Name)
#  lastname(Last Name)
#  email(Email)
#  phone(Phone)
#  title(Title)
#  creator_id(Created By)
#  owner_id(Assigned To)
#  modified_by_id(Modified By)
#  master_leadsource_id(Lead Source)
#  is_converted_from_lead(Is Converted From Lead)
#  is_do_not_call(Do Not Call)
#  source(Source)
#  description(Description Details)
#  created_at(Created At)
#  updated_at(Updated At)
# 
# Indexes
#
# Foreign Keys
#
class Contact < ApplicationRecord
end