# frozen_string_literal: true

RSpec.describe Chronopost::Labels::Track, '.for' do
  subject { described_class.for(params) }

  let(:params) { { skyBillNumber: 'test' } }

  let(:query_result) do
    { list_event_info_comp: events }
  end

  let(:events) { double(:events) }

  before do
    expect(Chronopost::Query)
      .to(receive(:run))
      .with(Chronopost::Services::TrackingService, described_class::OPERATION, Hash)
      .and_return(query_result)
  end

  it 'returns tracking events' do
    expect(subject).to eq(events)
  end
end
