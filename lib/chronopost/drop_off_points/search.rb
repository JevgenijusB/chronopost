# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Search < Operation
      OPERATION = :recherche_point_chronopost_par_coordonnees_geographiques

      # @!visibility private
      def run
        response = Chronopost::Query.run(service, OPERATION, params)
        response[:liste_point_relais]
      end

      private

      def service_name
        :drop_off_points
      end
    end
  end
end
