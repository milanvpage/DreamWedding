Rails.application.routes.draw do
#localhost:3000/rails/info/routes



  #put custom routes at the top
  get '/signup' => 'users#new'



  resources :categories
  resources :comments
  resources :users
  # get '/weddings', to: 'weddings#index' controller name and then the action it's going to inside our controller
  # get '/weddings/:id', to: 'weddings#show' as: 'wedding'
  # get '/weddings/most_expensive', to: 'weddings#most_expensive'
  resources :weddings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
