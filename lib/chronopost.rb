# frozen_string_literal: true

require 'chronopost/version'
require 'chronopost/configuration'
require 'chronopost/errors'

require 'chronopost/status'
require 'chronopost/client'

require 'chronopost/services'
require 'chronopost/services/base_service'
require 'chronopost/services/drop_off_points_service'
require 'chronopost/services/shipping_service'
require 'chronopost/services/tracking_service'
require 'chronopost/service_registry'

require 'chronopost/request'
require 'chronopost/query'
require 'chronopost/operation'

require 'chronopost/drop_off_points/search'
require 'chronopost/labels/create'
require 'chronopost/labels/track'
require 'chronopost/labels/fetch'

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
