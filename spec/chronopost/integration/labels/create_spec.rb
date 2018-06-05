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
  end

  let(:parcel) do
    {
      shipping_date: '2018-06-05 10:29:36',
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
          recipient_reference: '4442R',
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
