# frozen_string_literal: true

RSpec.describe Chronopost::Services::BaseService do
  let(:service_name) { :drop_off_points }

  describe '.new' do
    subject { described_class.new(service_name) }

    it { is_expected.to be_an_instance_of(described_class) }
  end

  describe '#client' do
    subject { service.client }

    let(:service) { build(:base_service) }

    before { allow(service).to receive(:wsdl_url) }

    it 'creates a client' do
      expect(Chronopost::Client).to receive(:new).once
      subject
    end
  end
end
