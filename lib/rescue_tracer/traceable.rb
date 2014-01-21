module RescueTracer
  module Traceable
    def rescue_with_handler(exception)
      Rails.logger.debug(ExceptionView.new(exception)) if RescueTracer.enabled?
      super
    end

    class ExceptionView
      def initialize(exception)
        @exception = exception
      end

      def to_s
        "#{summary}\n#{backtrace}"
      end

      private

      def summary
        "#{@exception.class} #@exception"
      end

      def backtrace
        @exception.backtrace.join("\n")
      end
    end
  end
end
