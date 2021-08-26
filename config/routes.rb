Rails.application.routes.draw do
  root to: 'sessions#welcome'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/venues/most_expensive', to: 'venues#most_expensive'
  get '/venues/least_expensive', to: 'venues#least_expensive'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :weddings
  resources :users
 resources :venues do
    resources :weddings, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
#put custom routes at the top of the routes because dynamic routes like :id will over power them.
#localhost:3000/rails/info/routes

# get '/weddings', to: 'weddings#index' controller name and then the action it's going to inside our controller
  # get '/weddings/:id', to: 'weddings#show' as: 'wedding'
  # get '/weddings/most_expensive', to: 'weddings#most_expensive'