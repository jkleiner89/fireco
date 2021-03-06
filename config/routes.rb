Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'static_pages#index'
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  end
end
