# frozen_string_literal: true

FactoryBot.define do
  factory :client, class: Chronopost::Client do
    wsdl_url { 'https://ws.chronopost.fr' }

    initialize_with { new(wsdl_url) }
  end

  factory :request, class: Chronopost::Request do
    operation { :test }
    params { { v1: 'v1', k2: 'v2' } }

    initialize_with { new(operation, params) }
  end

  factory :configuration, class: Chronopost::Configuration

  factory :query, class: Chronopost::Query do
    operation { :test }
    params { { v1: 'v1', k2: 'v2' } }

    initialize_with { new(operation, params) }
  end

  factory :status, class: Chronopost::Status do
    code { 0 }
    message { 'OK' }

    initialize_with { new(code, message) }
  end

  factory :base_service, class: Chronopost::Services::BaseService do
    name { :shipping }

    initialize_with { new(name) }
  end

  factory :parcel_shops_service, class: Chronopost::Services::ParcelShopsService
  factory :shipping_service, class: Chronopost::Services::ShippingService
  factory :tracking_service, class: Chronopost::Services::TrackingService
  factory :quick_cost_service, class: Chronopost::Services::QuickCostService

  factory :service_registry, class: Chronopost::ServiceRegistry
end
