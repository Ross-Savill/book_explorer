Rails.application.routes.draw do
  devise_for :users
  resources :books do
    collection { post :import }
  end

  root 'books#index'
end
