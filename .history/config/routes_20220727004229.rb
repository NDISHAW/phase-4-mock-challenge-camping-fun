Rails.application.routes.draw do
  resources :activities, only: [:index, :destroy ]
  resources :signups, only: [:create, :index]
  resources :campers, only: [:create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
