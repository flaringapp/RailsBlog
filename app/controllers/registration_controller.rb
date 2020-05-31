class RegistrationController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def registration
    if session["user_id"]
      redirect_to feed_feed_path
    end
  end

  def register
    unless validate_params
      return
    end

    @user = User.create(post_params)

    session[:user_id] = @user.id
    redirect_to feed_feed_path
  end

  private

  def validate_params
    unless params[:email] and params[:email].length > 0
      show_error "Please input your email"
      return false
    end

    unless params[:email] =~ URI::MailTo::EMAIL_REGEXP
      show_error "Please input correct email"
      return false
    end

    unless params[:password] and params[:password].length > 0
      show_error "Please input your password"
      return false
    end

    unless params[:nickname] and params[:nickname].length > 0
      show_error "Please input your nickname"
      return false
    end

    unless params[:avatar]
      show_error "Please select your avatar"
      return false
    end

    true
  end

  def show_error(message)
    redirect_to registration_registration_path, notice: message
  end

  def post_params
    params.permit(:email, :password, :nickname, :avatar, :description)
  end
end
