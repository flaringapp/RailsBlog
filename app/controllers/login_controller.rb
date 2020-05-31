class LoginController < ApplicationController
  def login
    unless session["user_id"]
      redirect_to feed_feed_path
    end
  end

  def post
    @user = User.find_by email: params[:login], password: params[:password]

    unless @user
      redirect_to login_login_path, notice: "Invalid login or password!"
      return
    end

    session[:user_id] = @user.id
    redirect_to feed_feed_path
  end

  private

  def post_params
    params.permit(:login, :password)
  end
end
