# frozen_string_literal: true

RSpec.xdescribe Chronopost::ParcelShops::Search, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        latitude: '49.698421',
        longitude: '4.972183',
        shipping_date: '2017-06-05',
        number_of_results: 25,
      }
    end

    let(:response_keys) do
      %i(latitude longitude distance)
    end
  end
end
