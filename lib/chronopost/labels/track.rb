# frozen_string_literal: true

module Chronopost
  module Labels
    class Track < Operation
      OPERATION = :track_skybill_v2

      DEFAULT_PARAMS = {
        language: 'fr_FR',
        skybillNumber: '',
      }.freeze

      # @!visibility private
      def run
        response = Chronopost::Query.run(service, OPERATION, params_with_credentials)
        response[:list_event_info_comp]
      end

      private

      def service_name
        :tracking
      end

      def default_params
        DEFAULT_PARAMS
      end
    end
  end
end
