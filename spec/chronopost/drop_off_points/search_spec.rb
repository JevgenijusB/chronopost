# frozen_string_literal: true

RSpec.describe Chronopost::DropOffPoints::Search, '.for' do
  subject { described_class.for(params) }

  let(:params) do
    {
      coordGeoLatitude: latitude,
      coordGeoLongitude: longitude,
    }
  end

  let(:latitude) { '49.698421' }
  let(:longitude) { '4.972183' }

  let(:query_result) do
    { liste_point_relais: drop_off_points }
  end

  let(:drop_off_points) { [double(:drop_off_point)] }

  before do
    expect(Chronopost::Query)
      .to(receive(:run))
      .with(Chronopost::Service, described_class::OPERATION, Hash)
      .and_return(query_result)
  end

  it 'returns a list of drop off points' do
    expect(subject).to eq(drop_off_points)
  end
end
