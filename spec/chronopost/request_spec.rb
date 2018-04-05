# frozen_string_literal: true

RSpec.describe Chronopost::Request do
  let(:request) { build(:request) }

  describe '#message' do
    subject { request.params }

    it 'includes all parameters' do
      expect(subject).to include(*request.params.keys)
    end
  end
end
