# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class SearchByAddress
      module Translations
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

        RESPONSE = {
          liste_point_relais: :drop_off_point_list,
          identifiant: :id,
          nom: :name,
          actif: :active,
          adresse1: :address,
          code_postal: :postal_code,
          localite: :city,
          code_pays: :country,
          indice_de_localisation: :extra_information,
          coord_geolocalisation_latitude: :latitude,
          coord_geolocalisation_longitude: :longitude,
          url_google_maps: :google_maps_url,
          acces_personne_mobilite_reduite: :reduced_mobility_access,
          distance_en_metre: :distance,
          liste_horaire_ouverture: :work_hours,
          jour: :weekday,
          horaires_as_string: :work_hours_string,
          debut: :opens,
          fin: :closes,
          poids_maxi: :max_weight,
          type_de_point: :point_type,
        }.freeze
      end
    end
  end
end
