class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def login
    if session["user_id"]
      redirect_to feed_feed_path
    end
  end

  def post
    @user = User.find_by("(email = ? OR nickname = ?) AND password = ?", params["login"], params[:login], params["password"])

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
