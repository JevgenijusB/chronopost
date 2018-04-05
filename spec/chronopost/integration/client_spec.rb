# frozen_string_literal: true

RSpec.xdescribe Chronopost::Client do
  WebMock.allow_net_connect!(net_http_connect_on_start: true)

  let(:service) { build(:drop_off_points_service) }
  let(:client) { service.client }

  describe '#operations' do
    subject { client.operations }

    it 'returns a list of operations' do
      expect(subject).not_to be_empty
    end
  end
end
