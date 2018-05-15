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

      private

      def credentials
        {
          header_value: {
            account_number: Chronopost.config.account_number,
          },
          password: Chronopost.config.account_password,
        }
      end
    end
  end
end
