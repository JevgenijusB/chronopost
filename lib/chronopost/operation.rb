# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  class Operation
    include Interactor::Initializer

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
  end
end
