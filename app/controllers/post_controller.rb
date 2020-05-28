class PostController < ApplicationController
  TEST_IMAGE = "https://www.mydiscprofile.com/_images/homepage-free-personality-test.png"
  TEST_CREATOR = 1

  def post
  end

  def add
    params[:creator_id] = TEST_CREATOR
    @post = Post.create(post_params)

    redirect_to('/feed/feed')
  end

  def post_params
    params.permit(:image, :message, :creator_id)
  end
end
