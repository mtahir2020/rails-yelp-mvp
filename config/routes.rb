Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, except: [:delete, :update, :edit] do
    resources :reviews, only: [:create, :index]
    # if it flops add back :new to reviews
  end

end
