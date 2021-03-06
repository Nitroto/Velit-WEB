class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  helper_method :send_message

  def default_url_options
    {locale: I18n.locale}
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end

  def send_message
    @message = Message.new
  end

  # def set_locale
  #   logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
  #   I18n.locale = extract_locale_from_accept_language_header
  #   logger.debug "* Locale set to '#{I18n.locale}'"
  # end

  # private
  # def extract_locale_from_accept_language_header
  #   request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  # end
end
