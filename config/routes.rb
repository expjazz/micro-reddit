Rails.application.routes.draw do
  root 'welcome#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'users#new'
  delete 'logout', to: 'sessions#destroy'
  resources :users
  resources :posts do
    resources :comments
  end
end
