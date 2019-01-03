# frozen_string_literal: true

RSpec.describe Chronopost::Services::ParcelShopsService do
  it_behaves_like :service do
    subject { build(:parcel_shops_service) }
  end
end
