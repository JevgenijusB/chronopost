# frozen_string_literal: true

module Chronopost
  module Labels
    class Fetch < Operation
      OPERATION = :get_reserved_skybill

      def run
        Chronopost::Query.run(service, OPERATION, params)
      end

      private

      def service_name
        :shipping
      end
    end
  end
end
