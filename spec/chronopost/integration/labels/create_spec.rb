# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Create, '.for' do
  let(:shipper) do
    {
      shipper_name: 'Test Shipper',
      shipper_civility: 'L',
      shipper_address: '211 Rue Pasteur',
      shipper_address_additional: '44',
      shipper_postal_code: '33200',
      shipper_city: 'Bordeaux',
      shipper_country_code: 'FR',
      shipper_email: 'shipper@test.com',
    }
  end

  let(:customer) do
    {
      customer_name: 'Vinted',
      customer_civility: 'E',
      customer_address: '70-701 Rue Zirmunu',
      customer_postal_code: '09124',
      customer_city: 'Vilnius',
      customer_country_code: 'LT',
      customer_country_name: 'Lituanie',
    }
  end

  let(:recipient) do
    # FR
    {
      recipient_name: 'CARTRIDGE WORLD',
      recipient_name_additional: 'Test Recipient',
      recipient_civility: 'L',
      recipient_contact_name: 'Test Recipient',
      recipient_address: '27 RUE GAMBETTA',
      recipient_postal_code: '08200',
      recipient_city: 'SEDAN',
      recipient_country_code: 'FR',
      recipient_email: 'recipient@test.com',
    }
    # NL
    # {
    #   recipient_name: 'HOMERR B.V. / A-MARKT',
    #   recipient_name_additional: 'Test Recipient',
    #   recipient_civility: 'L',
    #   recipient_contact_name: 'Test Recipient',
    #   recipient_address: '32 BRINK',
    #   recipient_postal_code: '1097 TW',
    #   recipient_city: 'AMSTERDAM',
    #   recipient_country_code: 'NL',
    #   recipient_email: 'recipient@test.com',
    # }
    # BE
    # {
    #   recipient_name: 'INTERSTUDIO',
    #   recipient_name_additional: 'Test Recipient',
    #   recipient_civility: 'L',
    #   recipient_contact_name: 'Test Recipient',
    #   recipient_address: '11 KAPELSTRAAT',
    #   recipient_postal_code: '2660',
    #   recipient_city: 'HOBOKEN',
    #   recipient_country_code: 'BE',
    #   recipient_email: 'recipient@test.com',
    # }
    # LU
    # {
    #   recipient_name: 'ALIMA BELAIR',
    #   recipient_name_additional: 'Test Recipient',
    #   recipient_civility: 'L',
    #   recipient_contact_name: 'Test Recipient',
    #   recipient_address: '20 AVENUE X SEPTEMBRE',
    #   recipient_postal_code: '2550',
    #   recipient_city: 'LUXEMBOURG',
    #   recipient_country_code: 'LU',
    #   recipient_email: 'recipient@test.com',
    # }
  end

  let(:parcel) do
    {
      shipping_date: '2019-01-10 10:29:36',
      # product_code: 49, # International
      shipping_hour: '12',
      weight: '0.5',
      height: '30',
      length: '30',
      width: '60',
    }
  end

  it_behaves_like :query do
    let(:params) do
      {
        shipper: shipper,
        customer: customer,
        recipient: recipient,
        reference: {
          shipper_reference: '13454',
          recipient_reference: '4442R', # FR
          # recipient_reference: '9989H', # NL
          # recipient_reference: '3047A', # BE
          # recipient_reference: '8176A', # LU
        },
        skybill: parcel,
      }
    end

    let(:response_keys) do
      %i(
        reservation_number
        result_multi_parcel_value
      )
    end
  end
end
