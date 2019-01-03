# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  module ParcelShops
    class SearchByAddress
      class FormatResponse
        include Interactor::Initializer

        initialize_with :response

        def run
          response[:parcel_shop_list]
        end
      end
    end
  end
end
