# frozen_string_literal: true

module Chronopost
  module Labels
    class Cancel < Operation
      configure(
        operation: :cancel_skybill,
        service: :tracking,
      )
    end
  end
end
