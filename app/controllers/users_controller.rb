class UsersController < ApplicationController
  def profile
    @userid = params[:user_id]
    @userinfo = User.find(params[:user_id])
    @usercount = @userinfo.tweets
    @tweets = Tweet.all
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
   protected
   def configure_permitted_parameters
       devise_parameter_sanitizer.for(:sign_up) do |user|
           user.permit(:name, :heard_how, :email, :password, :password_confirmation)
       end
       devise_parameter_sanitizer.for(:account_update) do |user|
           user.permit(:name, :email, :password, :password_confirmation, :current_password)
       end
   end
end
