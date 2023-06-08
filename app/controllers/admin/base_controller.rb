class Admin::BaseController < ActionController::Base
  around_action :use_default_locale

  private

  def use_default_locale(&block)
    I18n.with_locale('en', &block)
  end
end
