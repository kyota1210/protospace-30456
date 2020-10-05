class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :show
  before_action :config_permitted_paramerters, if: :devise_controller?

  def config_permitted_paramerters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
