# frozen_string_literal: true

RSpec.describe Chronopost::Labels::Create, '.for' do
  subject { described_class.for(params) }

  let(:params) { { test: '' } }

  let(:query_result) do
    { result_multi_parcel_value: label }
  end

  let(:label) { double(:label) }

  before do
    expect(Chronopost::Query)
      .to(receive(:run))
      .with(Chronopost::Services::ShippingService, described_class::OPERATION, Hash)
      .and_return(query_result)
  end

  it 'returns a label info' do
    expect(subject).to eq(label)
  end
end
