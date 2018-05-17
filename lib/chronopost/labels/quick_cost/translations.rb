# frozen_string_literal: true

module Chronopost
  module Labels
    class QuickCost
      module Translations
        PARAMS = {
          account_number: :accountNumber,
          password: :password,
          departure_code: :depCode,
          arrival_code: :arrCode,
          weight: :weight,
          product_code: :productCode,
          type: :type,
        }.freeze

        RESPONSE = {}.freeze
      end
    end
  end
end
