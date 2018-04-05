# frozen_string_literal: true

RSpec.xdescribe Chronopost::DropOffPoints::Search, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        coordGeoLatitude: '49.698421',
        coordGeoLongitude: '4.972183',
        service: 'L',
        weight: '1',
        shippingDate: '15/07/2017',
      }
    end

    let(:response_keys) do
      %i(
        coord_geolocalisation_latitude
        coord_geolocalisation_longitude
        distance_en_metre
      )
    end
  end
end
