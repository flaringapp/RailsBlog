class PostController < ApplicationController

  def post
    unless session[:user_id]
      redirect_to login_login_path
    end
  end

  def add
    user_id = session[:user_id]
    unless user_id
      redirect_to login_login_path
    end

    params[:creator_id] = user_id
    @post = Post.create(post_params)

    redirect_to('/feed/feed')
  end

  def post_params
    params.permit(:image, :message, :creator_id)
  end
end
