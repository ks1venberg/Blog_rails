class ApplicationController < ActionController::Base

  protect_from_forgery with: :exeption
  before_action :configure_permitted_parameters, if :devise_controller?



private

  def configure
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

end
