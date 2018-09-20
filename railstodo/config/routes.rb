Rails.application.routes.draw do
  resources :categories
  root 'todos#index'
  resources :todos do
    member do
      patch 'status'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
