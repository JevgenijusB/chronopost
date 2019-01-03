# frozen_string_literal: true

module Chronopost
  module Services
    class ParcelShopsService < BaseService
      WSDL_URL = 'https://ws.chronopost.fr/recherchebt-ws-cxf/PointRelaisServiceWS?wsdl'

      def initialize
        super(:parcel_shops)
      end

      def wsdl_url
        WSDL_URL
      end
    end
  end
end
