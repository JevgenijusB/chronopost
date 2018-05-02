# frozen_string_literal: true

require 'interactor/initializer'

module Chronopost
  module Labels
    class Track
      class FormatResponse
        include Interactor::Initializer

        initialize_with :response

        def run
          response[:list_event_info_comp]
        end
      end
    end
  end
end
