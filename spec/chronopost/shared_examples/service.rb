# frozen_string_literal: true

RSpec.shared_examples :service do
  describe '#wsdl_url' do
    it 'raises no error' do
      expect { subject.wsdl_url }.not_to raise_error
    end
  end
end
