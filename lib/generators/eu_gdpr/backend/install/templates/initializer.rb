EuGdpr::Backend.configure do |config|
  # Set the resources, that will be shown in the backend menu.
  # 
  # Default: config.registered_controllers = lambda do
  #            [
  #              EuGdpr::Backend::PrivacyPoliciesController,
  #              EuGdpr::Backend::PersonalDataController
  #            ]
  #          end
  # 
  config.registered_controllers = lambda do
    [
      EuGdpr::Backend::PrivacyPoliciesController,
      EuGdpr::Backend::PersonalDataController
    ]
  end

  # Set the services, that will be shown in the backend menu.
  # 
  # Default: config.registered_services = lambda do
  #            []
  #          end
  # 
  config.registered_services = lambda do
    []
  end
end