Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      resources :ideas, only: [:index, :create, :update, :destroy]
      resources :votes, only: [:index, :create, :update, :destroy]
      resources :teams, only: [:index, :create, :update, :destroy]
    end
  end
end
