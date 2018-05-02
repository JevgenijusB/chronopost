# frozen_string_literal: true

RSpec.describe Chronopost::Request do
  let(:request) do
    build(:request, operation: operation, params: params)
  end

  let(:operation) { :test }
  let(:params) { { test: 'test' } }

  describe '.new' do
    subject { described_class.new(operation, params) }

    it { is_expected.to be_an_instance_of described_class }
  end

  describe '#operation' do
    subject { request.operation }

    it 'returns an operation' do
      expect(subject).to eq(operation)
    end
  end
end
