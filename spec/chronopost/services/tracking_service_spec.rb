# frozen_string_literal: true

RSpec.describe Chronopost::Services::TrackingService do
  it_behaves_like :service do
    subject { build(:tracking_service) }
  end
end
