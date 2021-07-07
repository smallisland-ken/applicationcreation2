Rails.application.routes.draw do
  get 'users/show'
  get 'post_comments/create'
  get 'post_comments/destroy'
   root to: "homes#top"
   devise_for :users
   resources :post_images, only: [:new, :create, :index, :show, :destroy] do
   resource :favorites, only: [:create, :destroy]

   resources :post_comments, only: [:create, :destroy]
  end
 # onlyをつけることによって限定してルーティングをしてくれる
  resources :users, only: [:show, :edit, :update]

end
