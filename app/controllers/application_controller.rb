class ApplicationController < ActionController::Base
    before_action :authenticate_user!,except: [:top]
    # コントローラーが作動するま前に実行されるのがbefore_actionメソッド
    # authenticate_userログイン認証されていなければ、ログイン画面へリダイレクトする
  
    before_action :configure_permitted_parameters, if: :devise_controller?

# configure_permitted_parametersは、deviseのユーザー認証機能を使う時に記載する。
  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
