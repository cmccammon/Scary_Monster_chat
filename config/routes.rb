Rails.application.routes.draw do
  
  resources :users
  resources :chats


 get '/home',   to: 'welcome#index',    as: 'home'
 get '/login',  to: 'sesssions#new',    as: 'login'
 post '/login', to: 'sesssions#create', as: 'create_session'
 get '/about',  to: 'welcome#about',    as: 'about'
 get '/logout', to: 'sesssions#destroy', as: 'logout'

 root 'chats#index'

end
