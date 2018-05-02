# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Search < Operation
      configure operation: :recherche_point_chronopost_par_coordonnees_geographiques,
                service: :drop_off_points
    end
  end
end
