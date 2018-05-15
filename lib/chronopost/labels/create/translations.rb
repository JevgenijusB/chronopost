# frozen_string_literal: true

module Chronopost
  module Labels
    class Create
      module Translations
        PARAMS = {
          header_value: :headerValue,
          account_number: :accountNumber,
          id_emit: :idEmit,
          sub_account: :subAccount,

          shipper: :shipperValue,
          shipper_name: :shipperName,
          shipper_name_additional: :shipperName2,
          shipper_civility: :shipperCivility,
          shipper_contact_name: :shipperContactName,
          shipper_address: :shipperAdress1,
          shipper_address_additional: :shipperAdress2,
          shipper_postal_code: :shipperZipCode,
          shipper_city: :shipperCity,
          shipper_country_code: :shipperCountry,
          shipper_country_name: :shipperCountryName,
          shipper_email: :shipperEmail,
          shipper_phone: :shipperPhone,
          shipper_mobile: :shipperMobilePhone,
          shipper_pre_alert: :shipperPreAlert,

          customer: :customerValue,
          customer_name: :customerName,
          customer_name_additional: :customerName2,
          customer_civility: :customerCivility,
          customer_contact_name: :customerContactName,
          customer_address: :customerAdress1,
          customer_address_additional: :customerAdress2,
          customer_postal_code: :customerZipCode,
          customer_city: :customerCity,
          customer_country_code: :customerCountry,
          customer_country_name: :customerCountryName,
          customer_email: :customerEmail,
          customer_phone: :customerPhone,
          customer_mobile: :customerMobilePhone,
          customer_pre_alert: :customerPreAlert,
          print_as_sender: :printAsSender,

          recipient: :recipientValue,
          recipient_name: :recipientName,
          recipient_name_additional: :recipientName2,
          recipient_civility: :recipientCivility,
          recipient_contact_name: :recipientContactName,
          recipient_address: :recipientAdress1,
          recipient_address_additional: :recipientAdress2,
          recipient_postal_code: :recipientZipCode,
          recipient_city: :recipientCity,
          recipient_country_code: :recipientCountry,
          recipient_country_name: :recipientCountryName,
          recipient_email: :recipientEmail,
          recipient_phone: :recipientPhone,
          recipient_mobile: :recipientMobilePhone,
          recipient_pre_alert: :recipientPreAlert,

          reference: :refValue,
          customer_skybill_number: :customerSkybillNumber,
          pcard_transaction_number: :PCardTransactionNumber,
          recipient_reference: :recipientRef,
          shipper_reference: :shipperRef,

          skybill: :skybillValue,
          bulk_number: :bulkNumber,
          skybill_rank: :skybillRank,
          master_skybill_number: :masterSkybillNumber,
          cod_currency: :codCurrency,
          cod_price: :codValue,
          customs_currency: :customsCurrency,
          customs_price: :customsValue,
          insurance_currency: :insuredCurrency,
          insurance_price: :insuredValue,
          port_currency: :portCurrency,
          port_price: :portValue,
          evt_code: :evtCode,
          object_type: :objectType,
          product_code: :productCode,
          shipping_date: :shipDate,
          shipping_hour: :shipHour,
          weight_unit: :weightUnit,
          quality: :qualite,
          to_the_order_of: :toTheOrderOf,

          skybill_params: :skybillParamsValue,
          duplicate: :duplicata,
          with_reservation: :withReservation,

          send_label_to_sender: :modeRetour,
          number_of_parcels: :numberOfParcel,
          multiparcel: :multiParcel,
        }.freeze

        RESPONSE = {}.freeze
      end
    end
  end
end
