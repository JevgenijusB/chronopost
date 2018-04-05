# frozen_string_literal: true

require 'savon'

module Chronopost
  class Client
    attr_reader :wsdl_url

    def initialize(wsdl_url)
      @wsdl_url = wsdl_url
    end

    def soap_client
      @soap_client ||= Savon.client(config)
    end

    def config
      @config ||= {
        wsdl: wsdl_url,
        convert_request_keys_to: :none,
        element_form_default: :unqualified,
        env_namespace: :soapenv,
        open_timeout: Chronopost.config.api_timeout,
        read_timeout: Chronopost.config.api_timeout,
        log: Chronopost.config.debug,
        pretty_print_xml: true,
      }
    end

    def call(request)
      with_retry do
        soap_client.call(request.operation, message: request.params)
      end
    end

    def operations
      with_retry { soap_client.operations }
    end

    private

    def with_retry
      max_retries.times do |i|
        begin
          return yield
        rescue Net::OpenTimeout, Net::ReadTimeout => e
          raise TimeoutError, e.message if i + 1 == max_retries
        rescue StandardError => e
          raise ClientError, e.message if i + 1 == max_retries
        end
      end
    end

    def max_retries
      @max_retries ||= Chronopost.config.api_max_retries
    end
  end
end
