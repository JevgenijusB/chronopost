# frozen_string_literal: true

RSpec.describe Chronopost::Request do
  let(:request) do
    build(:request, operation: operation, params: params)
  end

  let(:operation) { :test }
  let(:params) { { test: 'test', blank: '' } }

  describe '.new' do
    subject { described_class.new(operation, params) }

    it { is_expected.to be_an_instance_of described_class }
  end

  describe '#params' do
    subject { request.params }

    it 'includes all non-blank parameters' do
      expect(subject).to eq(params.reject { |_, val| val.blank? })
    end
  end

  describe '#operation' do
    subject { request.operation }

    it 'returns an operation' do
      expect(subject).to eq(operation)
    end
  end
end
