# frozen_string_literal: true

module Chronopost
  module ParcelShops
    module SearchByAddress::Translations
      include Search::Translations

      PARAMS = {
        account_number: :accountNumber,
        postal_code: :zipCode,
        country_code: :countryCode,
        point_type: :type,
        product_code: :productCode,
        shipping_date: :shippingDate,
        number_of_results: :maxPointChronopost,
        search_radius: :maxDistanceSearch,
        holiday_tolerant: :holidayTolerant,
      }.freeze
    end
  end
end
