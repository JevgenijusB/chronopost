# frozen_string_literal: true

module Chronopost
  module ParcelShops
    class SearchByAddress < Operation
      configure(
        operation: :recherche_point_chronopost_inter,
        service: :parcel_shops,
      )
    end
  end
end
