Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout',to:'sessions#destroy'  
  post 'message',to:'messages#create'

  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
