# frozen_string_literal: true

module Chronopost
  module Labels
    class Track
      module Translations
        PARAMS = {
          header_value: :headerValue,
          account_number: :accountNumber,
          skybill_number: :skybillNumber,
        }.freeze

        RESPONSE = {
          list_event_info_comp: :events_list,
          zip_code: :postal_code,
          npc: :postal_office_code,
        }.freeze
      end
    end
  end
end
