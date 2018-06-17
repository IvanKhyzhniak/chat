Rails.application.routes.draw do
  resource :session, only: [:create, :destroy]
  get "users", to: "users#index"
  resource :profile, only: [:create, :show]
  post "chats", to: "chats#create"
end
