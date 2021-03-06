Fundraiser::Engine.routes.draw do
  root :to => 'rewards#index'

  namespace :manage do
    root :to => 'rewards#index'
    resource :settings
    resources :rewards
  end

  resources :rewards, :only => :index
  resource :thanks, :only => :show
  resources :ipns
end
