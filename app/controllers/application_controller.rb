class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configue_permitted_parameters, if: :devise_controller?


  protected

  def configue_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name_sei, :name_mei, :name_kana_sei, :name_kana_mei, :tel])
  end
end
