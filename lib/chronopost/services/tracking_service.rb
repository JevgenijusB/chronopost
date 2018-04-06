# frozen_string_literal: true

module Chronopost
  module Services
    class TrackingService < BaseService
      WSDL_URL = 'https://www.chronopost.fr/tracking-cxf/TrackingServiceWS?wsdl'

      def initialize
        super(:tracking)
      end

      def wsdl_url
        WSDL_URL
      end

      private

      def credentials
        {}
      end
    end
  end
end
