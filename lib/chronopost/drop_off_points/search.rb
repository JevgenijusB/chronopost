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
        productCode: 86,
        service: '',
        weight: '',
        shippingDate: '',
        maxPointChronopost: 30,
        maxDistanceSearch: 10,
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
