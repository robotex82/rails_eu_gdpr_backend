FactoryGirl.define do
  factory :eu_gdpr_privacy_policy, class: EuGdpr::PrivacyPolicy do
    locale { I18n.locale }
  end
end
