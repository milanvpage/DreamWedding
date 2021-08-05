Rails.application.routes.draw do
  #put custom routes at the top
  get '/signup' => 'users#new'
  


  resources :categories
  resources :comments
  resources :users
  resources :weddings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
