Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "restaurants", to: "restaurants#index"

  # # new route
  # get "restaurants/new", to: "restaurants#new", as: :new
  # # create route
  # post "restaurants", to: "restaurants#create"

  # # resources :reviews
  # # get "restaurants/:id/reviews/", to: ""

  # # show route
  # get "restaurant/:id", to: "restaurants#show", as: :restaurant

  resources :restaurants, except: [:delete, :update, :edit] do
    resources :reviews, only: [:create, :new]
  end

end
