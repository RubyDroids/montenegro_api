Rails.application.routes.draw do  
  get 'pages/index'
  # http://railscasts.com/episodes/350-rest-api-versioning?view=asciicast
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :regions, only: %i[index show] do
        collection do
          get 'geo'
          get 'country'
          get 'states'     
          get 'validate'     
        end
      end
    end
  end
  
  root to: 'pages#index'
  get '/about', to: 'pages#about', as: :about
end
