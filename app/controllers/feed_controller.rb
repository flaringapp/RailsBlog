class FeedController < ApplicationController
  def feed
    user_id = session[:user_id]
    unless user_id
      redirect_to login_login_path
      return
    end

    @posts = Post.all.order("created_at DESC")
    @posts.each do |post|
      post.init
    end

    user = User.find(user_id)

    @user_name = "Deleted user"
    @user_avatar = User::DEFAULT_AVATAR

    if user
      @user_name = user.nickname
      @user_avatar = user.avatar_safe
    end
  end

  def logout
    reset_session
    redirect_to home_index_path
  end
end
