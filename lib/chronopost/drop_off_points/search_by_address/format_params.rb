# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  module DropOffPoints
    class SearchByAddress
      class FormatParams
        include Interactor::Initializer

        initialize_with :params

        def run
          params.merge(formatted_shipping_date)
        end

        private

        def formatted_shipping_date
          { shipping_date: format_date(params[:shipping_date]) }
        end

        def format_date(date)
          Date.parse(date).strftime('%d/%m/%Y')
        end
      end
    end
  end
end
