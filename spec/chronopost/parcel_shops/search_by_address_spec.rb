# frozen_string_literal: true

RSpec.describe Chronopost::ParcelShops::SearchByAddress, '.for' do
  it_behaves_like :operation do
    let(:service) { Chronopost::Services::ParcelShopsService }
  end
end
