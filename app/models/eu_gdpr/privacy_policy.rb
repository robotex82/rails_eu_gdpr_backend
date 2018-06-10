module EuGdpr
  class PrivacyPolicy < Ecm::Cms::Page
    after_initialize :set_defaults, :if => :new_record?
    before_validation :set_locale_dependent_defaults, :if => :new_record?

    default_scope { where(:pathname => '/eu_gdpr/privacy_policies/', :basename => 'show') }

    private

    def set_defaults
      self.pathname ||= '/eu_gdpr/privacy_policies/'
      self.basename ||= 'show'
      self.handler  ||= 'textile'
    end

    def set_locale_dependent_defaults
      return if self.locale.nil?
      self.title    ||= EuGdpr::Configuration.privacy_policy_defaults_for(self.locale)[:title]
    end
  end
end
