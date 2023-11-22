Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")

  # get 'restaurants', to: 'restaurants#index'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # # patch 'restaurants/:id', to: 'restaurants#update'
  # # delete 'restaurants/:id', to: 'restaurants#destroy'

  # post 'reviews', to: 'reviews#create'
  # get 'reviews/new', to: 'reviews#new', as: :new_review


  resources :restaurants, only: [:index, :show, :new, :create,]do # génère les 7 routes du crud
    resources :reviews, only: [:new, :create,]
  end
end
  #resources :reviews, only: :destroy # DELETE reviews/:id
