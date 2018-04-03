# frozen_string_literal: true

RSpec.describe Chronopost::Client do
  let(:client) { build(:client) }

  it 'has a factory' do
    expect(client).to be_truthy
  end

  describe '#call' do
    subject { client.call(request) }

    let(:request) { build(:request) }
    let(:response) { %w(test) }

    before do
      stub_request(:get, client.wsdl_url)
      expect(client.soap_client)
        .to receive(:call)
        .and_return(response)
    end

    it 'returns a response' do
      expect(subject).to eq(response)
    end
  end
end
