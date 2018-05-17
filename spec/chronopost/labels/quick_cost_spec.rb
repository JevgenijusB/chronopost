# frozen_string_literal: true

RSpec.describe Chronopost::Labels::QuickCost, '.for' do
  it_behaves_like :operation do
    let(:service) { Chronopost::Services::QuickCostService }
  end
end
