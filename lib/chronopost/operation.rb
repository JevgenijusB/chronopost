# frozen_string_literal: true

require 'interactor/initializer'
require 'chronopost/has_defaults'

module Chronopost
  class Operation
    include Interactor::Initializer
    include Chronopost::HasDefaults

    initialize_with :params

    # @!visibility private
    def run
      raise NotImplementedError
    end

    private

    def service_name
      raise NotImplementedError
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
