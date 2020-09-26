Rails.application.routes.draw do
devise_for :users
root 'items#index'
namespace :items do
  resources :searches, only: :index
end
resources :items, only: [:index, :show,:new,:create] do
resources :items, only: [:index, :show,:new,:create,:destroy] do
    collection do
      get 'genre_children', defaults: { format: 'json' }
      get 'genre_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'search'
      get 'genre_children', defaults: { format: 'json' }
      get 'genre_grandchildren', defaults: { format: 'json' }
    end
  end
  resources :purchase, only: [:index,:new]
end
end
