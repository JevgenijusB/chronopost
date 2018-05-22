# frozen_string_literal: true

RSpec.describe Chronopost::DropOffPoints::Details, '.for' do
  it_behaves_like :operation do
    let(:service) { Chronopost::Services::DropOffPointsService }
  end
end
