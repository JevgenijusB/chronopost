# frozen_string_literal: true

require 'chronopost/version'
require 'chronopost/configuration'
require 'chronopost/errors'

require 'chronopost/status'
require 'chronopost/client'
require 'chronopost/service'
require 'chronopost/service_registry'
require 'chronopost/request'
require 'chronopost/query'
require 'chronopost/operation'

require 'chronopost/drop_off_points/search'

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
      @services.register(Service.new(service_name))
    end
  end

  def monitor(monitorable)
    return unless config.monitor.respond_to?(:call)
    config.monitor.call(monitorable)
  end
end
