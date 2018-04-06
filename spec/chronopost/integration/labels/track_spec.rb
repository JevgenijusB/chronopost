# frozen_string_literal: true

RSpec.xdescribe Chronopost::Labels::Track, '.for' do
  it_behaves_like :query do
    let(:params) do
      {
        skybillNumber: 'EE000927143CD',
      }
    end

    let(:response_keys) do
      %i(events)
    end
  end
end
