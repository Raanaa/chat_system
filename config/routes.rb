Rails.application.routes.draw do
 
  # post 'applications/create',  to: 'applications#create'
  # post 'applications/:id/chats/create',  to: 'chats#create'
  # post 'chats/:id/messages/create',  to: 'messages#create'

  get 'chats/:id/messages/search',  to: 'messages#search'

  resources :applications do
    post 'create',  on: :collection
    resources :chats do
      post 'create', on: :collection
      resources :messages do
        post 'create', on: :collection
      end
    end
  end


end
