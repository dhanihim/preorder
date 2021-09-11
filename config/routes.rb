Rails.application.routes.draw do
  resources :schedules
  resources :scheduled_items
  resources :items
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
