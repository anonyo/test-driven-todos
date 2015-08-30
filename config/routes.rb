Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos do
    resources :completion, only: :create
  end
  resource :session, only: [:new, :create]
end
