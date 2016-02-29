Rails.application.routes.draw do

  get 'sessions/new'

  resources :posts

  get 'about'   =>  'static_pages#about'
  get 'contact' =>  'static_pages#contact'

  get 'login'   =>  'sessions#login'

  root 'posts#index'
end
