# frozen_string_literal: true

RSpec.describe Chronopost::Services::BaseService do
  let(:service) { build(:base_service) }

  describe '.new' do
    subject { described_class.new(service_name) }

    let(:service_name) { :drop_off_points }

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

    it 'raises a NotImplementedError error' do
      expect { subject }.to raise_error NotImplementedError
    end
  end

  describe '#inject_credentials' do
    subject { service.inject_credentials(params, default_params) }

    let(:params) { { test: 'test' } }
    let(:credentials) { { inner: { accountNumber: 'n' }, accountPassword: 'p' } }
    let(:default_params) { { inner: { accountNumber: '' }, accountPassword: '' } }

    before do
      expect(Chronopost.config).to receive(:credentials).and_return(credentials)
    end

    it 'injects credentials to params' do
      expect(subject).to eq(default_params.deep_merge(credentials).deep_merge(params))
    end
  end
end
