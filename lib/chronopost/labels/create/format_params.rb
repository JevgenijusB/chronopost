# frozen_string_literal: true

require 'interactor/initializer'
require 'active_support/core_ext/hash/deep_merge'
require 'active_support/core_ext/time/zones'

module Chronopost
  module Labels
    class Create
      class FormatParams
        include Interactor::Initializer

        initialize_with :params

        def run
          params.deep_merge(formatted_shipping_date)
        end

        private

        def formatted_shipping_date
          {
            skybill: {
              shipping_date: format_date(params.dig(:skybill, :shipping_date)),
            },
          }
        end

        def format_date(date)
          Time.zone = 'UTC'
          Time.zone.parse(date).strftime('%Y-%m-%dT%H:%M:%S')
        end
      end
    end
  end
end
