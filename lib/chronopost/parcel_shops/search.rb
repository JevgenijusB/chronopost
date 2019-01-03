# frozen_string_literal: true

module Chronopost
  module ParcelShops
    class Search < Operation
      configure(
        operation: :recherche_point_chronopost_par_coordonnees_geographiques,
        service: :parcel_shops,
      )
    end
  end
end
