module Locale
  extend ActiveSupport::Concern

  private

  def extract_locale(attr = :locale)
    parsed_locale = params[attr]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  included do
    before_action :enforce_locale_in_path, :set_locale

    def set_locale
      I18n.locale = extract_locale || I18n.default_locale
    end

    def enforce_locale_in_path
      redirect_to root_path if params[:locale].blank?
    end

    def default_url_options
      { locale: I18n.locale }
    end
  end
end