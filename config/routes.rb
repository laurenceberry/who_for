Rails.application.routes.draw do

  resources :profile_characteristic_repeatables

  resources :profile_basic_repeatables

  resources :profile_quotes

  resources :profile_scalers

  devise_for :users
  resources :packs do
    resources :profiles
  end

  root 'pages#index'
end
