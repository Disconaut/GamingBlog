Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  devise_for :users
  get 'users/profile'
  post 'image/upload'
  post 'image/delete'
  resources :posts
  resources :posts do
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  root 'blog#index'
  get 'blog/(:type)', to: 'blog#posts'
  get 'blog/post/:id', to: 'blog#post'
  put 'users/change_avatar', to: 'users#update_avatar', as: 'user_avatar_edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
