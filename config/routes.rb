Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :dashboard, to: 'users#dashboard'
  patch :dashboard, to: 'users#update'
  resources :users,
  controllers: {
        registration: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
