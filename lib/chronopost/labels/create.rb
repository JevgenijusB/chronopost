# frozen_string_literal: true

module Chronopost
  module Labels
    class Create < Operation
      configure operation: :shipping_multi_parcel,
                service: :shipping
    end
  end
end
