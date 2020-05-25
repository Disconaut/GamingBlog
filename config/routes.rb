Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/create'
  post 'posts/create'
  get 'posts/edit'
  get 'posts/delete'
  root  'blog#index'
  get '/posts', to: 'blog#posts'
  get '/post', to: 'blog#post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
