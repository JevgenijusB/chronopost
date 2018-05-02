# frozen_string_literal: true

module Chronopost
  module Labels
    class Create < Operation
      configure operation: :shipping_multi_parcel,
                service: :shipping

      def run
        Chronopost::Query.run(service, operation, params_with_credentials)
      end
    end
  end
end
