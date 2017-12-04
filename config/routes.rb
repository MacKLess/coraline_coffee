Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'products#index'

  get '/signup' => 'users#new'
  post 'users' => 'users#create'

  get '/signup' => 'sessions#new'
  get '/signup' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  
  resources :reviews, only: [:index]

  resources :products do
    resources :reviews, shallow: true
  end

end
