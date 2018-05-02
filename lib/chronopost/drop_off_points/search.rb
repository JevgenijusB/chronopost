# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Search < Operation
      configure operation: :recherche_point_chronopost_par_coordonnees_geographiques,
                service: :drop_off_points

      def run
        Chronopost::Query.run(service, operation, params_with_credentials)
        # response[:liste_point_relais]
      end
    end
  end
end
