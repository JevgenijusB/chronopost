# frozen_string_literal: true

module Chronopost
  class Error < StandardError; end

  class ClientError < Error; end

  class TimeoutError < Error; end

  class EncodingError < Error; end

  class InvalidServiceError < Error; end

  class ResponseError < Error

    def initialize(status)
      @status = status
    end

    def status
      @status.code
    end

    def message
      "#{@status.code} - #{@status.message || 'Unknown error'}"
    end
  end
end
