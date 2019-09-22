Rails.application.routes.draw do
 
  post 'applications/create',  to: 'applications#create'
  get 'applications/show',  to: 'applications#show'
  get 'applications/:token/chats',  to: 'applications#get_chats'
  put 'applications/update',  to: 'applications#update'
  get 'applications',  to: 'applications#index'



  post 'chats/create',  to: 'chats#create'
  get 'chats/show',  to: 'chats#show'
  get 'chats/messages',  to: 'chats#get_messages'
  put 'chats/update',  to: 'chats#update'
  get 'chats',  to: 'chats#index'



  post 'messages/create',  to: 'messages#create'
  get 'messages/show',  to: 'messages#show'
  put 'messages/update',  to: 'messages#update'
  get 'messages/search',  to: 'messages#search'
  get 'messages',  to: 'messages#index'

  # resources :applications do
  #   post 'create',  on: :collection
  #   resources :chats do
  #     post 'create', on: :collection
  #     resources :messages do
  #       post 'create', on: :collection
  #     end
  #   end
  # end


end
