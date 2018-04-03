# frozen_string_literal: true

RSpec.describe Chronopost::Status do
  describe '#success?' do
    subject { status.success? }

    context 'on success' do
      let(:status) { build(:status, code: 0) }

      it 'returns true' do
        expect(subject).to be_truthy
      end
    end

    context 'on error' do
      let(:status) { build(:status, code: 1) }

      it 'returns false' do
        expect(subject).to be_falsey
      end
    end
  end
end
