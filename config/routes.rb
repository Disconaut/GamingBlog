Rails.application.routes.draw do
  devise_for :users
  get 'users/profile'
  post 'image/upload'
  post 'image/delete'
  # get 'posts/index'
  # get 'posts/create'
  # post 'posts/create'
  # get 'posts/edit'
  # patch 'posts/edit'
  # delete 'posts/destroy'
  # root  'blog#index'
  resources :posts
  root 'blog#index'
  get 'blog/(:type)', to: 'blog#posts'
  get 'blog/post/:id', to: 'blog#post'
  get 'users/profile', as: 'user_root'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
