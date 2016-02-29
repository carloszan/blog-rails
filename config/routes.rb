Rails.application.routes.draw do

  resources :posts

  get 'home'    =>  'static_pages#home'
  get 'about'   =>  'static_pages#about'
  get 'contact' =>  'static_pages#contact'

  root 'posts#index'
end
