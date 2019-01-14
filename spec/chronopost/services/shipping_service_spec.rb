# frozen_string_literal: true

RSpec.describe Chronopost::Services::ShippingService do
  it_behaves_like :service do
    subject { build(:shipping_service) }
  end

  describe '#inject_credentials' do
    subject { service.inject_credentials(account, params) }

    let(:service) { build(:shipping_service) }
    let(:account) { build(:account) }

    let(:params) do
      {
        header_value: {
          account_number: nil,
        },
        password: nil,
      }
    end

    it 'injects credentials to params' do
      expect(subject).to eq(
        params.merge(
          header_value: {
            account_number: account.number,
          },
          password: account.password,
        ),
      )
    end
  end
end
