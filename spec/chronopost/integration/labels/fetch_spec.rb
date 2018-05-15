# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Fetch, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        reservation_number: '88895913588767082',
      }
    end

    let(:response_keys) do
      %i(skybill)
    end
  end
end
