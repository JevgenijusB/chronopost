# frozen_string_literal: true

module Chronopost
  module Labels
    class QuickCost
      module Translations
        PARAMS = {
          account_number: :accountNumber,
          departure_code: :DepCode,
          arrival_code: :ArrCode,
          weight: :Weight,
          product_code: :ProductCode,
          password: :password,
          type: :Type,
        }.freeze

        RESPONSE = {}.freeze
      end
    end
  end
end
