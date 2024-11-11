Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :show]
      
      namespace :admin do
        resources :movies do
          resources :showtimes, only: [:create, :update, :destroy]
        end
        resources :reservations, only: [:index] # Reporting for admins
      end

      resources :showtimes, only: [:index] do
        resources :reservations, only: [:create, :destroy]
      end

      resources :users, only: [:create]
      post 'login', to: 'sessions#create'
    end
  end
end
