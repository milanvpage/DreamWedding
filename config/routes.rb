Rails.application.routes.draw do
  #put custom routes at thetop of the routes because dynamic routes like :id with over power them.
#localhost:3000/rails/info/routes
get '/venues/most_expensive', to: 'venues#most_expensive'

get '/venues/least_expensive', to: 'venues#least_expensive'


  #put custom routes at the top
  get '/signup' => 'users#new'
  get '/login' => 'users#login'

  resources :venues
  resources :comments
  resources :users
  # get '/weddings', to: 'weddings#index' controller name and then the action it's going to inside our controller
  # get '/weddings/:id', to: 'weddings#show' as: 'wedding'
  # get '/weddings/most_expensive', to: 'weddings#most_expensive'
  resources :weddings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
