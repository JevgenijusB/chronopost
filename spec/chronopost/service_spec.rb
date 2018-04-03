# frozen_string_literal: true

RSpec.describe Chronopost::Service do
  describe '.new' do
    subject { described_class.new(name) }

    context 'with a valid service name' do
      let(:name) { :drop_off_points }

      it { is_expected.to be_an_instance_of(described_class) }
    end

    context 'with an invalid service name' do
      let(:name) { :test }

      it 'raises an error' do
        expect { subject }.to raise_error Chronopost::InvalidServiceError
      end
    end
  end

  describe '#client' do
    subject { service.client }

    let(:service) { build(:service, :drop_off_points) }

    it 'creates a client' do
      expect(Chronopost::Client).to receive(:new).once
      subject
    end
  end
end