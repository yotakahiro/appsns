class ApplicationController < ActionController::Base	
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

	# def configure_permitted_parameters
 #      # sign_upのときに、nameを許可する
 #      devise_parameter_sanitizer.for(:sign_up) << :name
 #      #  account_updateのときに、nameを許可する
 #      devise_parameter_sanitizer.for(:account_update) << :name
 #    end

	def configure_permitted_parameters
      # sign_upのときに、nameをストロングパラメータに追加する
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
      # account_updateのときに、nameをストロングパラメータに追加する
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email])
    end

end
