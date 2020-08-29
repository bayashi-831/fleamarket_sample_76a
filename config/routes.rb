Rails.application.routes.draw do
devise_for :users
root 'items#index'
devise_scope :user do
  get 'mypage' => 'users/registrations#mypage'
  get 'logout_page' => 'users/registrations#logout_page'
  get 'creditcard' => 'users/registrations#creditcard'
end
resources :items, only: [:index, :show,:new,:create] do
    collection do
      get 'genre_children', defaults: { format: 'json' }
      get 'genre_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'genre_children', defaults: { format: 'json' }
      get 'genre_grandchildren', defaults: { format: 'json' }
    end
  end

  resources :purchase, only: :index

end
