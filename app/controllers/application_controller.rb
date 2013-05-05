class ApplicationController < ActionController::Base
  helper_method :languages

  before_filter :set_locale

  protect_from_forgery

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { :locale => I18n.locale }
  end

  def languages
  	Language.all
  end
end
