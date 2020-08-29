Rails.application.routes.draw do

devise_for :users
root 'items#index'
resources :items, only: [:show]
devise_scope :user do
  get 'mypage' => 'users/registrations#mypage'
  get 'logout_page' => 'users/registrations#logout_page'
  get 'creditcard' => 'users/registrations#creditcard'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :purchase, only: :index
end
