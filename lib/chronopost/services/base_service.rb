# frozen_string_literal: true

module Chronopost
  module Services
    class BaseService
      attr_reader :name

      def initialize(name)
        @name = name
      end

      def client
        @client ||= Client.new(wsdl_url)
      end

      def inject_credentials(params)
        Chronopost.config.credentials.merge(params)
      end

      private

      def wsdl_url
        raise NotImplementedError
      end
    end
  end
end
