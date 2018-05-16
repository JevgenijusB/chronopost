# frozen_string_literal: true

RSpec.xdescribe Chronopost::DropOffPoints::Search, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        latitude: '49.698421',
        longitude: '4.972183',
        shipping_date: '2017-05-20',
        number_of_results: 1,
      }
    end

    let(:response_keys) do
      %i(latitude longitude distance_in_meters)
    end
  end
end
