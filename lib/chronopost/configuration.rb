# frozen_string_literal: true

module Chronopost
  class Configuration
    DEFAULT_SERVICES = %i(
      parcel_shops
      shipping
      tracking
      quick_cost
    ).freeze

    attr_accessor(
      :api_timeout,
      :api_max_retries,
      :debug, :monitor,
      :enabled_services
    )

    attr_reader :http_adapter

    def initialize
      @enabled_services = DEFAULT_SERVICES

      @api_timeout = 10
      @api_max_retries = 2

      @debug = false
      @monitor = nil

      @http_adapter = :net_http
    end
  end
end
