# frozen_string_literal: true

module Chronopost
  module Services
    class ShippingService < BaseService
      WSDL_URL = 'https://www.chronopost.fr/shipping-cxf/ShippingServiceWS?wsdl'

      def initialize
        super(:shipping)
      end

      def wsdl_url
        WSDL_URL
      end
    end
  end
end
