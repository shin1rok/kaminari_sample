Rails.application.routes.draw do
  root to: 'users#index'
  resources :users do
    post 'redirect_users', on: :member
    post 'redirect_users', on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
