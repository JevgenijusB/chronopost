# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::QuickCost, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        departure_code: '59800',
        arrival_code: '66380',
        weight: 1,
      }
    end

    let(:response_keys) do
      %i(amount)
    end
  end
end
