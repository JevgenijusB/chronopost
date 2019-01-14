# frozen_string_literal: true

RSpec.describe Chronopost::Services::BaseService do
  let(:service) { build(:base_service) }

  describe '.new' do
    subject { described_class.new(service_name) }

    let(:service_name) { :parcel_shops }

    it { is_expected.to be_an_instance_of(described_class) }
  end

  describe '#client' do
    subject { service.client }

    before { allow(service).to receive(:wsdl_url) }

    it 'creates a client' do
      expect(Chronopost::Client).to receive(:new).once
      subject
    end
  end

  describe '#wsdl_url' do
    subject { service.wsdl_url }

    it 'raises an error' do
      expect { subject }.to raise_error 'must be implemented'
    end
  end

  describe '#inject_credentials' do
    subject { service.inject_credentials(account, params) }

    let(:account) { build(:account) }

    let(:params) do
      {
        account_number: nil,
        password: nil,
      }
    end

    it 'injects credentials to params' do
      expect(subject).to eq(
        params.merge(
          account_number: account.number,
          password: account.password,
        ),
      )
    end
  end
end
