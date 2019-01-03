# frozen_string_literal: true

module Chronopost
  module Labels
    class Track < Operation
      configure(
        operation: :track_skybill_v2,
        service: :tracking,
      )
    end
  end
end
