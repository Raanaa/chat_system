Rails.application.routes.draw do
 
  post 'applications/create',  to: 'applications#create'
  post 'applications/:id/chats/create',  to: 'chats#create'
  post 'chats/:id/messages/create',  to: 'messages#create'

  get 'chats/:id/messages/search',  to: 'messages#search'

  #get 'search', to: 'search#search'

  # post 'messages/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  # resources :applications do
  #   post 'create'
  #   member do
  #     post 'create'
  #   end

  #   resources :chats
  # end


end
