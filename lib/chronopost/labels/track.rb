# frozen_string_literal: true

module Chronopost
  module Labels
    class Track < Operation
      OPERATION = :track_skybill_v2

      def run
        response = Chronopost::Query.run(service, OPERATION, params)
        response[:list_event_info_comp]
      end

      private

      def service_name
        :tracking
      end
    end
  end
end
