module EuGdpr
  module Backend
    module Configuration
      def configure
        yield self
      end

      mattr_accessor :registered_controllers do
        lambda do
          []
        end
      end

      mattr_accessor :registered_services do
        lambda do
          []
        end
      end
    end
  end
end