Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations'}
  resources :trucks
  resources :stretches
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
