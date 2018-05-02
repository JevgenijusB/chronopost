# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  module DropOffPoints
    class Search
      class FormatResponse
        include Interactor::Initializer

        initialize_with :response

        def run
          response[:liste_point_relais]
        end
      end
    end
  end
end
