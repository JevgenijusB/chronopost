# frozen_string_literal: true

require 'chronopost/version'
require 'chronopost/configuration'
require 'chronopost/errors'

require 'chronopost/has_defaults'
require 'chronopost/formattable'
require 'chronopost/translatable'

require 'chronopost/status'
require 'chronopost/client'

require 'chronopost/services'
require 'chronopost/services/base_service'
require 'chronopost/services/parcel_shops_service'
require 'chronopost/services/shipping_service'
require 'chronopost/services/tracking_service'
require 'chronopost/services/quick_cost_service'
require 'chronopost/service_registry'

require 'chronopost/request'
require 'chronopost/query'
require 'chronopost/operation'
require 'chronopost/account'

require 'chronopost/parcel_shops/search'
require 'chronopost/parcel_shops/search/defaults'
require 'chronopost/parcel_shops/search/translations'
require 'chronopost/parcel_shops/search/format_params'
require 'chronopost/parcel_shops/search/format_response'

require 'chronopost/parcel_shops/search_by_address'
require 'chronopost/parcel_shops/search_by_address/defaults'
require 'chronopost/parcel_shops/search_by_address/translations'
require 'chronopost/parcel_shops/search_by_address/format_params'
require 'chronopost/parcel_shops/search_by_address/format_response'

require 'chronopost/parcel_shops/details'
require 'chronopost/parcel_shops/details/defaults'
require 'chronopost/parcel_shops/details/translations'
require 'chronopost/parcel_shops/details/format_response'

require 'chronopost/labels/create'
require 'chronopost/labels/create/defaults'
require 'chronopost/labels/create/translations'
require 'chronopost/labels/create/format_params'

require 'chronopost/labels/track'
require 'chronopost/labels/track/defaults'
require 'chronopost/labels/track/translations'
require 'chronopost/labels/track/format_response'

require 'chronopost/labels/fetch'
require 'chronopost/labels/fetch/defaults'
require 'chronopost/labels/fetch/translations'

require 'chronopost/labels/quick_cost'
require 'chronopost/labels/quick_cost/defaults'
require 'chronopost/labels/quick_cost/translations'

require 'chronopost/labels/cancel'
require 'chronopost/labels/cancel/defaults'
require 'chronopost/labels/cancel/translations'

module Chronopost
  module_function

  def config
    @config ||= Configuration.new
  end

  def reset
    @config = Configuration.new
  end

  def configure
    yield(config)
    register_services
  end

  def services
    @services
  end

  def register_services
    @services = ServiceRegistry.new

    config.enabled_services.each do |service_name|
      @services.register(Services.build(service_name))
    end
  end

  def monitor(monitorable)
    return unless config.monitor.respond_to?(:call)

    config.monitor.call(monitorable)
  end
end
