class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  private
  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

  def set_locale

    Rails.application.routes.default_url_options[:locale] = extract_locale_from_accept_language_header || I18n.default_locale

    if !params[:locale]
      redirect_to "/#{Rails.application.routes.default_url_options[:locale]}#{request.path}"
    else
      I18n.locale = params[:locale] || I18n.default_locale
      Rails.application.routes.default_url_options[:locale]= I18n.locale
    end

  end

end