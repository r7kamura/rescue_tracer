module RescueTracer
  class Railtie < Rails::Railtie
    initializer "rescue_tracer" do
      ActionController::Base.send(:include, RescueTracer::Traceable)
    end
  end
end
