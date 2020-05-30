class ApplicationController < ActionController::Base
  before_action :set_locale

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, :alert => t('devise.failure.unauthenticated')
    end
  end

  private
  def default_url_options
    {locale: I18n.locale}
  end

  private
  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  private
  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ?
        parsed_locale.to_sym :
        nil
  end
end
