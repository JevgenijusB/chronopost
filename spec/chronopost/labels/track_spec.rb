# frozen_string_literal: true

RSpec.describe Chronopost::Labels::Track, '.for' do
  it_behaves_like :operation do
    let(:service) { Chronopost::Services::TrackingService }
  end
end
