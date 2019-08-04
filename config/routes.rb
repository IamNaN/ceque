Supportq::Engine.routes.draw do
  namespace :admin do
    resources :conversations, only: :index
  end
  namespace :agent do
    resources :conversations, only: :index
  end
  resources :conversations do
    resources :messages
  end
  get 'support', to: 'supportq/messages#index'
  resources :foos
end
