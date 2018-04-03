# frozen_string_literal: true

RSpec.describe Chronopost::Operation, '.for' do
  subject { described_class.for(double(:params)) }

  it 'raises a NotImplementedError' do
    expect { subject }.to raise_error NotImplementedError
  end
end
