# frozen_string_literal: true

module Chronopost
  module Labels
    class Track < Operation
      configure operation: :track_skybill_v2,
                service: :tracking

      def run
        Chronopost::Query.run(service, operation, params)
        # response[:list_event_info_comp]
      end
    end
  end
end
