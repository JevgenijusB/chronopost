# frozen_string_literal: true

module Chronopost
  module Labels
    class Create < Operation
      OPERATION = :shipping_multi_parcel

      def run
        Chronopost::Query.run(service, OPERATION, params_with_credentials)
      end

      private

      def service_name
        :shipping
      end
    end
  end
end
