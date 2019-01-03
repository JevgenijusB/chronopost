# frozen_string_literal: true

RSpec.xdescribe Chronopost::DropOffPoints::SearchByAddress, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        postal_code: '1097',
        country_code: 'NL',
        shipping_date: '2018-01-03',
        number_of_results: 2,
        language: 'NL',
      }
    end

    let(:response_keys) do
      %i(latitude longitude distance)
    end
  end
end
