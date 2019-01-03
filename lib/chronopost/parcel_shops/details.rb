# frozen_string_literal: true

module Chronopost
  module ParcelShops
    class Details < Operation
      configure(
        operation: :recherche_detail_point_chronopost_inter,
        service: :parcel_shops,
      )
    end
  end
end
