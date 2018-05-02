# frozen_string_literal: true

RSpec.shared_examples :operation do
  subject { described_class.for(params) }

  let(:params) { { param: :param } }
  let(:response) { { response: :response } }

  before do
    expect(Chronopost::Query)
      .to(receive(:run))
      .with(service, described_class.operation, Hash)
      .and_return(response)
  end

  it { is_expected.to eq(response) }
end
