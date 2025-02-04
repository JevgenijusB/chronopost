# frozen_string_literal: true

RSpec.shared_examples :operation do
  subject { described_class.for(account, params) }

  let(:account) { build(:account) }
  let(:params) { { param: :param } }
  let(:response) { { response: :response } }

  before do
    if defined?(described_class::FormatResponse)
      expect(described_class::FormatResponse)
        .to receive(:for)
        .and_return(response)
    end

    if defined?(described_class::FormatParams)
      expect(described_class::FormatParams)
        .to receive(:for)
        .and_return(params)
    end

    expect(Chronopost::Query)
      .to(receive(:run))
      .with(service, described_class.operation, Hash)
      .and_return(response)
  end

  it { is_expected.to eq(response) }
end
