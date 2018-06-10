module EuGdpr
  module Backend
    class HomeController < Itsf::Backend::HomeController
      helper Rails::AddOns::TableHelper
    end
  end
end
