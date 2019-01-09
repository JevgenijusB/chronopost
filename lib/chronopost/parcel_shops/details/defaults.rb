# frozen_string_literal: true

module Chronopost
  module ParcelShops
    class Details
      module Defaults
        PARAMS = {
          account_number: nil,
          password: nil,
          id: nil,
          country_code: 'FR',
          language: 'FR',
          version: 2.0,
        }.freeze
      end
    end
  end
end
