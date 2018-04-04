# frozen_string_literal: true

RSpec.describe Chronopost::Services::DropOffPointsService do
  it_behaves_like :service do
    subject { build(:drop_off_points_service) }
  end
end
