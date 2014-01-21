require "rescue_tracer/version"
require "rescue_tracer/traceable"
require "rescue_tracer/railtie"

module RescueTracer
  class << self
    def enabled?
      !!@enable
    end

    def enable!
      @enable = true
    end
  end
end
