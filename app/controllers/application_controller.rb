class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
 
  def set_locale
    I18n.locale = extract_locale_from_subdomain || I18n.default_locale
  end

  def extract_locale_from_subdomain
    parsed_locale = request.subdomains.first
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def current_controller_action?(names)
    Rails.logger.info('params')
    Rails.logger.info(params)
    return false if (params[:action].blank? || params[:controller].blank?)
    controller_action = "#{params[:controller]}.#{params[:action]}"
    Rails.logger.info(controller_action)
    names.include?(controller_action)
  end
  helper_method :current_controller_action?

end
