Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  resources :books, only: [:new, :create, :show, :edit, :index, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
