# frozen_string_literal: true

RSpec.describe Chronopost::Services::QuickCostService do
  it_behaves_like :service do
    subject { build(:quick_cost_service) }
  end
end
