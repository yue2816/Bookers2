Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :show]
  resources :users, only: [:index, :create, :show, :edit, :update]
end
