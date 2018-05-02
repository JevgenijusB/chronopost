# frozen_string_literal: true

require 'interactor/initializer'
require 'chronopost/has_defaults'

module Chronopost
  class Operation
    include Interactor::Initializer

    include Chronopost::HasDefaults
    include Chronopost::Formattable

    class << self
      attr_reader :operation, :service

      def configure(operation:, service:)
        @operation = operation
        @service = service
      end
    end

    class << self
      attr_reader :operation, :service

      def configure(operation:, service:)
        @operation = operation
        @service = service
      end
    end

    initialize_with :params

    def run
      adjusted_response
    end

    private

    def adjusted_response
      format_response(response)
    end

    def response
      @response ||= Chronopost::Query.run(
        service, operation, params_with_credentials
      )
    end

    def operation
      self.class.operation
    end

    def service_name
      self.class.service
    end

    def service
      Chronopost.services.resolve(service_name)
    end

    def params_with_credentials
      service.inject_credentials(params_with_defaults)
    end

    def params_with_defaults
      add_defaults_to_params(params)
    end
  end
end
