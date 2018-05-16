# frozen_string_literal: true

module Chronopost
  module Labels
    class QuickCost
      module Defaults
        PARAMS = {
          account_number: nil,
          departure_code: nil,
          arrival_code: nil,
          weight: nil,
          product_code: 86,
          password: nil,
          type: 'M',
        }.freeze
      end
    end
  end
end
