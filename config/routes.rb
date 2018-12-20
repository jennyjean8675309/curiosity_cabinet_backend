Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :cabinets, only: [:index, :create, :show]
      resources :items, only: [:index, :create, :show, :update, :destroy]
      resources :item_types, only: [:index, :create]
    end
  end
end
