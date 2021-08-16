Rails.application.routes.draw do
  root to: 'sessions#welcome'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'

  get '/venues/most_expensive', to: 'venues#most_expensive'
  get '/venues/least_expensive', to: 'venues#least_expensive'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :users
  resources :comments, only: [:new, :create, :index]
  resources :weddings do
    resources :comments, shallow: true
  end
  resources :venues do
    resources :weddings, shallow: true
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
#put custom routes at the top of the routes because dynamic routes like :id will over power them.
#localhost:3000/rails/info/routes

# get '/weddings', to: 'weddings#index' controller name and then the action it's going to inside our controller
  # get '/weddings/:id', to: 'weddings#show' as: 'wedding'
  # get '/weddings/most_expensive', to: 'weddings#most_expensive'