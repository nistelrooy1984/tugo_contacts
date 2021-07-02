module Contacts
  class GetContactsService
    attr_reader :result

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      @result = Contact.all
    end
  end
end