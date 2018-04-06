# frozen_string_literal: true

RSpec.describe Chronopost::ResponseError do
  subject(:error) { described_class.new(status) }

  let(:status) { build(:status, code: '0', message: 'OK') }

  describe '.new' do
    subject { error }
    it { is_expected.to be_an_instance_of described_class }
  end

  describe '#status' do
    subject { error.status }

    it { is_expected.to eq(status.code) }
  end

  describe '#message' do
    subject { error.message }

    it { is_expected.to eq("#{status.code} - #{status.message}") }
  end
end
