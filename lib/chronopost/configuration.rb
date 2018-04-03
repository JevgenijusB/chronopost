# frozen_string_literal: true

module Chronopost
  class Configuration
    attr_accessor :account_number, :account_password,
      :api_timeout, :api_max_retries,
      :debug, :monitor, :enabled_services

    def initialize
      @account_number = nil
      @account_password = nil

      @enabled_services = [
        :drop_off_points,
      ]

      @api_timeout = 10
      @api_max_retries = 2

      @debug = false

      @monitor = nil
    end
  end
end
