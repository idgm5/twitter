class UsersController < ApplicationController
  def profile
    @userid = params[:user_id]
    @userinfo = User.find(params[:user_id])
    @usercount = @userinfo.tweets
    @tweets = Tweet.all
  end
end
