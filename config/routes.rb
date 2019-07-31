Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new', to: 'reviews#new', as: :new_review
  # get 'reviews/create'
  # get 'restaurants/index', to: 'restaurants#index', as: :restaurants
  # get 'restaurants/show', to: 'restaurants#show'
  # get 'restaurants/new', to: 'restaurants#new', as: :restaurant
  # get 'restaurants/create'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:update] do
    resources :reviews, only: [:new, :create]
  end
end
