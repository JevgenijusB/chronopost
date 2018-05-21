# frozen_string_literal: true

module Chronopost
  module Labels
    class Cancel
      module Defaults
        PARAMS = {
          account_number: nil,
          password: nil,
          language: 'fr_FR',
          skybill_number: nil,
        }.freeze
      end
    end
  end
end
