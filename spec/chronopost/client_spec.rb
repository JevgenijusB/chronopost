# frozen_string_literal: true

RSpec.describe Chronopost::Client do
  let(:client) { build(:client) }

  it 'has a factory' do
    expect(client).to be_truthy
  end

  describe '#call' do
    subject { client.call(request) }

    let(:request) { build(:request) }

    context 'with a successful request' do
      let(:response) { %w(test) }

      before do
        stub_request(:get, client.wsdl_url)
        expect(client.soap_client).to receive(:call).and_return(response)
      end

      it 'returns a response' do
        expect(subject).to eq(response)
      end
    end

    context 'when the request times out' do
      before { stub_request(:get, client.wsdl_url).to_timeout }

      it 'raises an error' do
        expect { subject }.to raise_error Chronopost::TimeoutError
      end
    end
  end
end
