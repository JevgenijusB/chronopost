# frozen_string_literal: true

module Chronopost
  class Request
    attr_reader :operation, :params

    def initialize(operation, params = {})
      @operation = operation
      @params = params
    end
  end
end
