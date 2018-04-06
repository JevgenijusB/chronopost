# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Fetch, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        reservationNumber: '88896353780857082',
      }
    end

    let(:response_keys) do
      %i()
    end
  end
end
