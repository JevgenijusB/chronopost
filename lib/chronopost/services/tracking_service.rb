# frozen_string_literal: true

module Chronopost
  module Services
    class TrackingService < BaseService
      WSDL_URL = 'https://ws.chronopost.fr/tracking-cxf/TrackingServiceWS?wsdl'

      def initialize
        super(:tracking)
      end

      def wsdl_url
        WSDL_URL
      end
    end
  end
end
