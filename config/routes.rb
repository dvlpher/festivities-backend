Rails.application.routes.draw do
  
  resources :trips
  resources :comments
  resources :vendors
  resources :festivals
  namespace :api do
    namespace :v1 do
      resources :users
      resources :locations
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
