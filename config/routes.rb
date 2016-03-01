Rails.application.routes.draw do


  get 'sessions/new'

  resources :posts

  get    'about'   =>  'static_pages#about'
  get    'contact' =>  'static_pages#contact'

  #login and logout routes
  get    'login'   =>  'sessions#new'
  post   'login'   =>  'sessions#create'
  delete 'logout'  =>  'sessions#destroy'

  root 'posts#index'
end
