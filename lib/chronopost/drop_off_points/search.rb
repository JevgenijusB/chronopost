# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Search < Operation
      OPERATION = :recherche_point_chronopost_par_coordonnees_geographiques

      DEFAULT_PARAMS = {
        accountNumber: '',
        password: '',
        coordGeoLatitude: '',
        coordGeoLongitude: '',
        type: 'P',
        shippingDate: '',
        maxPointChronopost: 25,
        maxDistanceSearch: 40,
        holidayTolerant: 1,
      }.freeze

      # @!visibility private
      def run
        response = Chronopost::Query.run(service, OPERATION, params_with_credentials)
        response[:liste_point_relais]
      end

      private

      def service_name
        :drop_off_points
      end

      def default_params
        DEFAULT_PARAMS
      end
    end
  end
end
