module EuGdpr::Backend
  class PrivacyPoliciesController < Administrador::ResourcesController::Base
    def self.resource_class
      EuGdpr::PrivacyPolicy
    end

    private

    def permitted_params
      params.require(:privacy_policy).permit(:locale, :meta_description, :body, :format, :handler)
    end
  end
end
