# frozen_string_literal: true

module Chronopost
  module DropOffPoints
    class Details::Translations
      include Search::Translations

      PARAMS = {
        account_number: :accountNumber,
        id: :identifiant,
        country_code: :countryCode,
      }.freeze
    end
  end
end
