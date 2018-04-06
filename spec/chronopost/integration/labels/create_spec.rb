# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Create, '.for' do
  let(:shipper) do
    {
      shipperName: 'Test Shipper',
      shipperCivility: 'M',
      shipperAdress1: 'Folie-Méricourt, 15B',
      shipperZipCode: '75011',
      shipperCity: 'PARIS',
      shipperCountry: 'FR',
    }
  end

  let(:customer) do
    {
      customerName: 'Test Customer',
      customerCivility: 'M',
      customerAdress1: 'Folie-Méricourt 15B',
      customerZipCode: '75011',
      customerCity: 'PARIS',
      customerCountry: 'FR',
    }
  end

  let(:recipient) do
    {
      recipientName: 'Test Recipient',
      recipientCivility: 'M',
      recipientAdress1: 'Rue Pasteur, 211',
      recipientZipCode: '33200',
      recipientCity: 'BORDEAUX',
      recipientCountry: 'FR',
    }
  end

  let(:parcel) do
    {
      shipDate: '2018-04-03T12:29:36+02:00',
      shipHour: '12',
      weight: '2.0',
      height: '0',
      length: '0',
      width: '0',
    }
  end

  it_behaves_like :query do
    let(:params) do
      {
        shipperValue: shipper,
        customerValue: customer,
        recipientValue: recipient,
        refValue: { recipientRef: '0554S' },
        skybillValue: parcel,
      }
    end

    let(:response_keys) do
      %i(
        code_depot
        code_service
        reservation_number
        skybill_number
      )
    end
  end
end
