Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # /api
  namespace :api, defaults: { format: :json } do
    # /v1
    namespace :v1 do
      # /restaurants
      resources :restaurants  
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
