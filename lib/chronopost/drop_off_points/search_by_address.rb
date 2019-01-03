# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class SearchByAddress < Operation
      configure operation: :recherche_point_chronopost_inter,
                service: :drop_off_points
    end
  end
end
