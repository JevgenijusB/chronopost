# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'chronopost'
require 'support/factory_bot'
require 'webmock/rspec'
require 'chronopost/shared_examples/query'
require 'chronopost/shared_examples/service'


RSpec.configure do |config|
  config.before do
    Chronopost.configure do |cp_config|
      cp_config.account_number = '19869502'
      cp_config.account_password = '255562'
      cp_config.api_max_retries = 1
      cp_config.debug = true
    end
  end
end
