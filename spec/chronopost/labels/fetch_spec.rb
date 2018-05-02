# frozen_string_literal: true

RSpec.describe Chronopost::Labels::Fetch, '.for' do
  it_behaves_like :operation do
    let(:service) { Chronopost::Services::ShippingService }
  end
end
