Rails.application.routes.draw do
  mount EuGdpr::Backend::Engine => "/eu_gdpr/backend"
end
