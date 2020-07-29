Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :beers, except: :destroy
  delete '/beers/:id', to: 'beers#destroy', as: 'delete_beer'
  # get '/beers', to: 'beers#index'
  # get '/beers/:id', to: 'beers#show'
end
