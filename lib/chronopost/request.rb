# frozen_string_literal: true

module Chronopost
  class Request
    attr_reader :operation, :params

    def initialize(operation, params = {})
      @operation = operation
      @params = params.reject { |_, val| val.to_s.size.zero? }
    end

    private

    def api_credentials
      {
        accountNumber: Chronopost.config.account_number,
        password: Chronopost.config.account_password,
      }
    end
  end
end
