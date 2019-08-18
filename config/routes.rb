Rails.application.routes.draw do
  namespace :supportq do
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
  get 'support', to: 'supportq/conversations#new'
end
