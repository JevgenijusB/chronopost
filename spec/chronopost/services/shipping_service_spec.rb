# frozen_string_literal: true

RSpec.describe Chronopost::Services::DropOffPointsService do
  it_behaves_like :service do
    subject { build(:shipping_service) }
  end
end
