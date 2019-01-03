# frozen_string_literal: true

RSpec.xdescribe Chronopost::ParcelShops::Details, '.for' do
  it_behaves_like :query do
    let(:params) { { id: '3440S' } }

    let(:response_keys) do
      %i(latitude longitude postal_code address)
    end
  end
end
