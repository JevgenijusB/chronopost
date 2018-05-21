# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Cancel, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        skybill_number: 'XY596355837FR',
      }
    end

    let(:response_keys) do
      %i()
    end
  end
end
