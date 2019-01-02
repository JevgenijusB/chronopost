# frozen_string_literal: true

module Chronopost
  module Services
    class QuickCostService < BaseService
      WSDL_URL = 'https://ws.chronopost.fr/quickcost-cxf/QuickcostServiceWS?wsdl'

      def initialize
        super(:quick_cost)
      end

      def wsdl_url
        WSDL_URL
      end
    end
  end
end
