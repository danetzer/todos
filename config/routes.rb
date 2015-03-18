Todos::Application.routes.draw do
  root to: "todos#index"
  
  resources :todos, only: [:index,:new,:create] do
    resource :completion, only: :create
  end
  
  resources :sessions, only: [:new,:create]
end
