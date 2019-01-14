# frozen_string_literal: true

module Chronopost
  module Services
    class ShippingService < BaseService
      WSDL_URL = 'https://ws.chronopost.fr/shipping-cxf/ShippingServiceWS?wsdl'

      def initialize
        super(:shipping)
      end

      def wsdl_url
        WSDL_URL
      end

      def inject_credentials(account, params)
        params.deep_merge(
          header_value: {
            account_number: account.number,
          },
          password: account.password,
        )
      end
    end
  end
end
