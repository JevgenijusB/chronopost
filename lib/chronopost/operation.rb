# frozen_string_literal: true

require 'interactor/initializer'
require 'chronopost/formattable'
require 'chronopost/translatable'

module Chronopost
  class Operation
    include Interactor::Initializer

    include Chronopost::HasDefaults
    include Chronopost::Formattable
    include Chronopost::Translatable

    class << self
      attr_reader :operation, :service

      def configure(operation:, service:)
        @operation = operation
        @service = service
      end
    end

    initialize_with :account, :params

    def run
      adjusted_response
    end

    private

    def adjusted_params
      params_with_credentials = service.inject_credentials(account, params)
      params_with_defaults = add_defaults_to_params(params_with_credentials)
      formatted_params = format_params(params_with_defaults)
      translate_params(formatted_params)
    end

    def adjusted_response
      translated_response = translate_response(response)
      format_response(translated_response)
    end

    def response
      @response ||= Chronopost::Query.run(
        service, operation, adjusted_params
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
  end
end
