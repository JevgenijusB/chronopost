# frozen_string_literal: true

module Chronopost
  module Labels
    class Create
      module Defaults
        PARAMS = {
          headerValue: {
            accountNumber: nil,
            idEmit: 'CHRFR',
            subAccount: 0,
          },
          shipperValue: {
            shipperName: nil,
            shipperName2: nil,
            shipperCivility: nil,
            shipperContactName: nil,
            shipperAdress1: nil,
            shipperAdress2: nil,
            shipperZipCode: nil,
            shipperCity: nil,
            shipperCountry: nil,
            shipperCountryName: nil,
            shipperEmail: nil,
            shipperPhone: nil,
            shipperMobilePhone: nil,
            shipperPreAlert: 0,
          },
          customerValue: {
            customerName: nil,
            customerName2: nil,
            customerCivility: nil,
            customerContactName: nil,
            customerAdress1: nil,
            customerAdress2: nil,
            customerZipCode: nil,
            customerCity: nil,
            customerCountry: nil,
            customerCountryName: nil,
            customerEmail: nil,
            customerPhone: nil,
            customerMobilePhone: nil,
            customerPreAlert: 0,
            printAsSender: 'N',
          },
          recipientValue: {
            recipientName: nil,
            recipientName2: nil,
            recipientCivility: nil,
            recipientContactName: nil,
            recipientAdress1: nil,
            recipientAdress2: nil,
            recipientZipCode: nil,
            recipientCity: nil,
            recipientCountry: nil,
            recipientCountryName: nil,
            recipientEmail: nil,
            recipientPhone: nil,
            recipientMobilePhone: nil,
            recipientPreAlert: 0,
          },
          refValue: {
            customerSkybillNumber: nil,
            PCardTransactionNumber: nil,
            recipientRef: nil,
            shipperRef: nil,
          },
          skybillValue: {
            bulkNumber: nil,
            skybillRank: nil,
            masterSkybillNumber: nil,
            codCurrency: 'EUR',
            codValue: nil,
            customsCurrency: 'EUR',
            customsValue: 0,
            insuredCurrency: 'EUR',
            insuredValue: 0.0,
            portCurrency: nil,
            portValue: 0.0,
            evtCode: 'DC',
            objectType: 'MAR',
            productCode: 86,
            service: 0,
            shipDate: nil,
            shipHour: nil,
            weight: nil,
            weightUnit: 'KGM',
            height: nil,
            length: nil,
            width: nil,
            content1: nil,
            content2: nil,
            content3: nil,
            content4: nil,
            content5: nil,
            latitude: nil,
            longitude: nil,
            qualite: nil,
            source: nil,
            as: nil,
            toTheOrderOf: nil,
          },
          skybillParamsValue: {
            duplicata: 'N',
            mode: 'SPD',
            withReservation: 1,
          },
          password: nil,
          modeRetour: 2,
          numberOfParcel: 1,
          version: 2.0,
          multiParcel: 'N',
        }.freeze
      end
    end
  end
end