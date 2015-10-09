Rails.application.routes.draw do

  resources :users
  resources :chats

 get '/login',      to: 'sesssions#new',     as: 'login'
 post '/login',      to: 'sesssions#create', as: 'create_session'
 get '/about',      to: 'chats#about',       as: 'about'
 delete '/logout',  to: 'sesssions#destroy', as: 'logout'


 root chats_path

end
