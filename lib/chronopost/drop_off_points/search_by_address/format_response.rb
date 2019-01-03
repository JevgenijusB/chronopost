# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  module DropOffPoints
    class SearchByAddress
      class FormatResponse
        include Interactor::Initializer

        initialize_with :response

        def run
          response[:drop_off_point_list]
        end
      end
    end
  end
end
