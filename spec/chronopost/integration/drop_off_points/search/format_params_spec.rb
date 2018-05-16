# frozen_string_literal: true

RSpec.describe Chronopost::DropOffPoints::Search::FormatParams, '.for' do
  subject { described_class.for(params) }

  let(:params) do
    { shipping_date: '2018-05-16 00:00:00' }
  end

  it 'formats the shipping date' do
    expect(subject[:shipping_date]).to eq('16/05/2018')
  end
end
