module EuGdpr
  module Backend
    class HomeController < Administrador::HomeController::Base
      helper Rao::Component::TableHelper
    end
  end
end
