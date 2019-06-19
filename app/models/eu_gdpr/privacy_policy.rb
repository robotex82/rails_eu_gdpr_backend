module EuGdpr
  class PrivacyPolicy < Cmor::Cms::Page
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
      self.title    ||= I18n.with_locale(self.locale) { I18n.t('eu_gdpr.privacy_policy.default_title') }
    end
  end
end
