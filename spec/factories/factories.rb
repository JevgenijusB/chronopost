# frozen_string_literal: true

FactoryBot.define do
  factory :client, class: Chronopost::Client do
    wsdl_url 'test'

    initialize_with { new(wsdl_url) }
  end

  factory :request, class: Chronopost::Request do
    operation :test
    params { { v1: 'v1', k2: 'v2' } }

    initialize_with { new(operation, params) }
  end

  factory :configuration, class: Chronopost::Configuration

  factory :query, class: Chronopost::Query do
    operation :test
    params { { v1: 'v1', k2: 'v2' } }

    initialize_with { new(operation, params) }
  end

  factory :status, class: Chronopost::Status do
    code 0
    message 'OK'

    initialize_with { new(code, message) }
  end

  factory :service, class: Chronopost::Service do
    name :test

    initialize_with { new(name) }

    trait :drop_off_points do
      name :drop_off_points
    end
  end

  factory :service_registry, class: Chronopost::ServiceRegistry
end
