module RescueTracer
  class Railtie < Rails::Railtie
    initializer "rescue_tracer" do
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.send(:include, RescueTracer::Traceable)
      end
    end
  end
end
