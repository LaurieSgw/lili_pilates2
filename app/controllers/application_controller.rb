class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :switch_locale

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age, :phone_number, :level, :health_record])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :age, :phone_number, :level, :health_record])
  end

  def switch_locale(&action)
    locale = I18n.default_locale
    I18n.with_locale(locale, &action)
  end
end
