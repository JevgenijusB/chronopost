# frozen_string_literal: true

module Chronopost
  class Configuration
    DEFAULT_SERVICES = %i(
      drop_off_points
      shipping
      tracking
    ).freeze

    attr_accessor :account_number, :account_password,
      :api_timeout, :api_max_retries,
      :debug, :monitor, :enabled_services

    def initialize
      @account_number = nil
      @account_password = nil

      @enabled_services = DEFAULT_SERVICES

      @api_timeout = 10
      @api_max_retries = 2

      @debug = false
      @monitor = nil
    end

    def credentials
      {
        account_number: account_number,
        password: account_password,
      }
    end
  end
end
