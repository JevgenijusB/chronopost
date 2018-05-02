# frozen_string_literal: true

module Chronopost
  module Labels
    class Fetch < Operation
      configure operation: :get_reserved_skybill,
                service: :shipping

      def run
        Chronopost::Query.run(service, operation, params)
      end
    end
  end
end
