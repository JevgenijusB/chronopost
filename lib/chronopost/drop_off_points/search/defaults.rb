# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Search
      module Defaults
        PARAMS = {
          accountNumber: nil,
          password: nil,
          coordGeoLatitude: nil,
          coordGeoLongitude: nil,
          type: 'P',
          shippingDate: nil,
          maxPointChronopost: 25,
          maxDistanceSearch: 40,
          holidayTolerant: 1,
        }.freeze
      end
    end
  end
end
