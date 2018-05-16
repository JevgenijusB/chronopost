# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Create, '.for' do
  let(:shipper) do
    {
      shipper_name: 'Test Shipper',
      shipper_civility: 'E',
      shipper_address: 'Folie-Méricourt, 15B',
      shipper_postal_code: '75011',
      shipper_city: 'PARIS',
      shipper_country_code: 'FR',
      shipper_phone: '0607080910',
    }
  end

  let(:customer) do
    {
      customer_name: 'Vinted UAB',
      customer_civility: 'E',
      customer_address: 'Žirmūnų 70',
      customer_postal_code: '09124',
      customer_city: 'VILNIUS',
      customer_country_code: 'LT',
    }
  end

  let(:recipient) do
    {
      recipient_name: 'Test Recipient',
      recipient_civility: 'E',
      recipient_address: 'Rue Pasteur, 211',
      recipient_postal_code: '33200',
      recipient_city: 'BORDEAUX',
      recipient_country_code: 'FR',
      recipient_phone: '0607080911',
      recipient_email: 'test@tets.com',
    }
  end

  let(:parcel) do
    {
      shipping_date: '2018-05-23 12:29:36',
      shipping_hour: '12',
      weight: '2.0',
      height: '0',
      length: '0',
      width: '0',
    }
  end

  it_behaves_like :query do
    let(:params) do
      {
        shipper: shipper,
        customer: customer,
        recipient: recipient,
        reference: { recipient_reference: '0554S' },
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
