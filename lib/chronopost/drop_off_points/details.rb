# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Details < Operation
      configure operation: :recherche_detail_point_chronopost_inter,
                service: :drop_off_points
    end
  end
end
