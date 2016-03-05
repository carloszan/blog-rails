Rails.application.routes.draw do


  get 'tags/:id'   => 'tags#show', as: 'tag'
  get 'tags'       => 'tags#index'

  resources :posts

  get    'about'   =>  'static_pages#about'
  get    'contact' =>  'static_pages#contact'

  #login and logout routes
  get    'login'   =>  'sessions#new'
  post   'login'   =>  'sessions#create'
  delete 'logout'  =>  'sessions#destroy'

  root 'posts#index'
end
