Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'coffees#index'

  resources :reviews, only [:index]

  resources :coffees do
    resources :reviews, shallow: true
  end

end
