Rails.application.routes.draw do
  namespace :ceque do
    namespace :admin do
      resources :conversations, only: :index
    end
    namespace :agent do
      resources :conversations, only: :index
    end
    resources :conversations do
      resources :messages
    end
    resources :participants, only: [:create]
  end
  get 'support', to: 'ceque/conversations#new'
end
