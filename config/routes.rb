Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only:[:index, :new, :create, :show] do
    resources :reviews, only:[:new, :create, :show]
  end

 # get 'restaurants/new', to: 'restaurants#new'
 # get 'restaurants', to: 'restaurants#index'
 # get 'restaurants/:id', to: 'restaurants#show'

end
