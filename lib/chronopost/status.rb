# frozen_string_literal: true

module Chronopost
  class Status
    attr_reader :code, :message

    def initialize(code, message)
      @code = code
      @message = message
    end

    def success?
      code.zero?
    end
  end
end
