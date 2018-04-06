# frozen_string_literal: true

RSpec.describe Chronopost::Labels::Fetch, '.for' do
  subject { described_class.for(params) }

  let(:params) { { reservationNumber: 'test' } }

  let(:query_result) { label }
  let(:label) { double(:label) }

  before do
    expect(Chronopost::Query)
      .to(receive(:run))
      .with(Chronopost::Services::ShippingService, described_class::OPERATION, Hash)
      .and_return(query_result)
  end

  it 'returns tracking events' do
    expect(subject).to eq(label)
  end
end
