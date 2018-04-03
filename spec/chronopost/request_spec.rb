# frozen_string_literal: true

RSpec.describe Chronopost::Request do
  let(:request) { build(:request) }

  describe '#message' do
    subject { request.message }

    let(:mandatory_options) { %i(accountNumber password) }

    it 'has mandatory options' do
      expect(subject).to include(*mandatory_options)
    end

    it 'includes all parameters' do
      expect(subject).to include(*request.params.keys)
    end
  end
end
