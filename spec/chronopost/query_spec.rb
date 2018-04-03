# frozen_string_literal: true

RSpec.describe Chronopost::Query, '.run' do
  subject { described_class.run(service, operation, params) }

  let(:service) { build(:service, :drop_off_points) }
  let(:client) { service.client }

  let(:operation) { :test }
  let(:params) { {} }

  let(:response) { double(:response) }
  let(:body) do
    {
      test_response: {
        return: {
          error_code: '0',
        },
      },
    }
  end

  before do
    stub_request(:get, client.wsdl_url)

    expect(client).to receive(:call).and_return(response)
    expect(response).to receive(:body).and_return(body)
  end

  it 'returns an api response' do
    expect(subject).to eq(error_code: '0')
  end
end
