Rails.application.routes.draw do

  devise_for :users
  resources :packs do
    resources :profiles
  end

  root 'pages#index'
end
