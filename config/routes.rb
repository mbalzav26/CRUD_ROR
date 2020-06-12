Rails.application.routes.draw do
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get '/stores', to: 'stores#index'
  #get '/stores/new', to: 'stores#new'
  #post '/stores', to: 'stores#create'
  #get '/stores/:id/edit', to: 'stores#edit', as: 'edit_store'
  #patch '/stores/:id', to: 'stores#update'
  #delete '/store/:id', to: 'stores#delete'

end
