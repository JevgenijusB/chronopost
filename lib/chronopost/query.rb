# frozen_string_literal: true

module Chronopost
  class Query
    attr_reader :service, :operation, :params

    def self.run(service, operation, params)
      new(service, operation, params).execute!
    end

    def initialize(service, operation, params)
      @service = service
      @operation = operation
      @params = params
    end

    # @!visibility private
    def execute!
      result = response_body

      with_monitoring do
        return result if status.success?
        raise ResponseError, status
      end
    end

    private

    def response_body
      @response_body ||= response.body.dig(response_key, :return)
    end

    def response
      @response ||= service.client.call(request)
    end

    def request
      Chronopost::Request.new(operation, params)
    end

    def response_key
      "#{operation}_response".to_sym
    end

    def status
      Status.new(
        response_body[:error_code]&.to_i,
        response_body[:error_message],
      )
    end

    def with_monitoring
      Chronopost.monitor(monitorable_data)
      yield
    end

    def monitorable_data
      {
        request: request,
        response_body: response_body,
        status: status,
      }
    end
  end
end
