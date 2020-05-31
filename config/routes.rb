Rails.application.routes.draw do
  get 'registration/registration'
  post 'registration/register'

  get 'post/post'
  post 'post/add'
  post 'post/like'

  get 'feed/feed'
  post 'feed/logout'

  get 'login/login'
  post 'login/post'

  get 'home/index'

  root 'home#index'
end
