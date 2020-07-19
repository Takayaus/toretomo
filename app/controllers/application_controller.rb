class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_search

    after_action :store_location

def store_location
 # 今回の場合は、 /users/sign_in , /users/sign_up, /users/password にアクセスしたとき、ajaxでのやりとりはsessionには保存しない。
    if (request.fullpath != "/users/sign_in" && \
        request.fullpath != "/users/sign_up" && \
        request.fullpath != "/users/password" && \
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath 
    end
end

#ログイン後のリダイレクトをログイン前のページにする場合
def after_sign_in_path_for(resource)
  session[:previous_url] || root_path
end

#ログアウト後のリダイレクトをログアウト前のページにする場合
def after_sign_out_path_for(resource)
  session[:previous_url] || root_path
end
    def new
      @contact = Contact.new
    end

    def set_search
      @q = Gym.ransack(params[:q])
    end
    private
    def sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end

    protected
        def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :image_name, :sex])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :image_name, :sex])
    end
end
