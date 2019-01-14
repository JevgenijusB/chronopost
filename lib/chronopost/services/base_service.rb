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
        raise 'must be implemented'
      end

      def inject_credentials(account, params)
        params.deep_merge(
          account_number: account.number,
          password: account.password,
        )
      end
    end
  end
end
