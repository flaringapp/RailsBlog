class PostController < ApplicationController

  def post
    unless session[:user_id]
      redirect_to login_login_path
    end
  end

  def add
    unless validate_params
      return
    end

    user_id = session[:user_id]
    unless user_id
      redirect_to login_login_path
    end

    params[:creator_id] = user_id
    @post = Post.create(post_params)

    redirect_to('/feed/feed')
  end

  def validate_params
    unless params[:image]
      show_error "Please select image"
      return false
    end
    true
  end

  def show_error(message)
    redirect_to post_post_path, notice: message
  end

  def post_params
    params.permit(:image, :message, :creator_id)
  end
end
