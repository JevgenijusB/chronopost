# frozen_string_literal: true

RSpec.describe Chronopost do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  let(:enabled_services) { %i(parcel_shops) }

  before { Chronopost.config.enabled_services = enabled_services }

  describe '.config' do
    subject { described_class.config }

    it 'returns a configuration' do
      expect(subject).to be_a(Chronopost::Configuration)
      expect(subject.enabled_services).to eq(enabled_services)
    end
  end

  describe '.reset' do
    subject { described_class.reset }

    let(:config) { build(:configuration) }

    it 'resets a configuration' do
      expect(subject.enabled_services)
        .to eq(Chronopost::Configuration::DEFAULT_SERVICES)
    end
  end

  describe '.configure' do
    before do
      described_class.configure do |config|
        config.enabled_services = enabled_services
      end
    end

    it 'allows setting configuration' do
      expect(described_class.config.enabled_services).to eq(enabled_services)
    end

    it 'registers services' do
      expect(described_class.services.resolve(:parcel_shops)).not_to be_nil
    end
  end

  describe '.monitor' do
    subject { described_class.monitor(data) }

    let(:monitor) { ->(data) { print data[:attr] } }
    let(:data) { { attr: result } }
    let(:result) { 'attr' }

    before do
      allow(described_class.config)
        .to receive(:monitor)
        .and_return(monitor)
    end

    it 'runs a monitor callback' do
      expect { subject }.to output(result).to_stdout
    end
  end
end
