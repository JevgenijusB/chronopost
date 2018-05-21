# frozen_string_literal: true

RSpec.describe Chronopost::Labels::Create::FormatParams, '.for' do
  subject { described_class.for(params) }

  let(:params) do
    {
      skybill: {
        shipping_date: '2018-05-16 12:15:00',
      },
    }
  end

  it 'formats the shipping date' do
    expect(subject[:skybill][:shipping_date])
      .to eq('2018-05-16T12:15:00')
  end
end
