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

      def wsdl_url
        raise NotImplementedError
      end

      def inject_credentials(params)
        params.deep_merge(credentials)
      end

      private

      def credentials
        Chronopost.config.credentials
      end
    end
  end
end
