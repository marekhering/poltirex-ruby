Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'clients/registrations'}
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get '/init_app', to: "home#init_app"
  resources :trucks
  resources :stretches
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
