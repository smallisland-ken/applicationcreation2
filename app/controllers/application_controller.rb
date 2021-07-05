class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

# configure_permitted_parametersは、deviseのユーザー認証機能を使う時に記載する。

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
