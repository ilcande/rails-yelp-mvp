Rails.application.routes.draw do
  # create all the CRUD for restaurant
  # but just the new and create for reviews
  root to: 'restaurants#home'
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
