# frozen_string_literal: true

module Chronopost
  module Labels
    class Fetch < Operation
      OPERATION = :get_reserved_skybill

      DEFAULT_PARAMS = {
        reservationNumber: '',
      }.freeze

      # @!visibility private
      def run
        Chronopost::Query.run(service, OPERATION, params)
      end

      private

      def service_name
        :shipping
      end

      def default_params
        DEFAULT_PARAMS
      end
    end
  end
end
