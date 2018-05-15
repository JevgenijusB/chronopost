# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  module Labels
    class Track
      class FormatResponse
        include Interactor::Initializer

        initialize_with :response

        def run
          response[:events_list]
        end
      end
    end
  end
end
