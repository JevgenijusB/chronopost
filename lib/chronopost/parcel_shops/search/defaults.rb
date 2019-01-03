# frozen_string_literal: true

module Chronopost
  module ParcelShops
    class Search
      module Defaults
        PARAMS = {
          account_number: nil,
          password: nil,
          latitude: nil,
          longitude: nil,
          point_type: 'P',
          product_code: 86,
          service: 'L',
          shipping_date: nil,
          number_of_results: 25,
          search_radius: 40,
          holiday_tolerant: 1,
        }.freeze
      end
    end
  end
end
