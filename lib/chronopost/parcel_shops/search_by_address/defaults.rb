# frozen_string_literal: true

module Chronopost
  module ParcelShops
    class SearchByAddress
      module Defaults
        PARAMS = {
          account_number: nil,
          password: nil,
          address: nil,
          postal_code: nil,
          city: nil,
          country_code: nil,
          point_type: 'P',
          product_code: 49,
          service: 'L',
          shipping_date: nil,
          number_of_results: 25,
          search_radius: 40,
          holiday_tolerant: 1,
          language: nil,
          version: 2.0,
        }.freeze
      end
    end
  end
end
