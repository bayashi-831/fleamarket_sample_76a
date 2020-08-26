Rails.application.routes.draw do
  # devise_for :users
root 'items#index'
resources :items, only: [:show,:new] do
    collection do
      get 'genre_children', defaults: { format: 'json' }
      get 'genre_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'genre_children', defaults: { format: 'json' }
      get 'genre_grandchildren', defaults: { format: 'json' }
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :purchase, only: :index

end
