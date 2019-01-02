# frozen_string_literal: true

module Chronopost
  module Services
    class DropOffPointsService < BaseService
      WSDL_URL = 'https://ws.chronopost.fr/recherchebt-ws-cxf/PointRelaisServiceWS?wsdl'

      def initialize
        super(:drop_off_points)
      end

      def wsdl_url
        WSDL_URL
      end
    end
  end
end
