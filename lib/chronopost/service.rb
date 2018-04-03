# frozen_string_literal: true

module Chronopost
  class Service
    URLS = {
      drop_off_points: 'https://www.chronopost.fr/recherchebt-ws-cxf/PointRelaisServiceWS?wsdl',
    }.freeze

    attr_reader :name

    def initialize(name)
      @name = name
      raise InvalidServiceError if wsdl_url.blank?
    end

    def client
      @client ||= Client.new(wsdl_url)
    end

    private

    def wsdl_url
      URLS[name]
    end
  end
end