# frozen_string_literal: true

module Chronopost
  module Labels
    class QuickCost < Operation
      configure(
        operation: :quick_cost,
        service: :quick_cost,
      )
    end
  end
end
