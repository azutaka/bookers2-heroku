Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :book, only: [:new, :create, :index, :show, :destroy]
  get 'home/about' => 'homes#about'
end
