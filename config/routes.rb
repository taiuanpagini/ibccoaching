Rails.application.routes.draw do
  root to: 'home#index'
  resources :pinterests
  put 'pinterests/ativo/:id' => 'pinterests#ativo', :as => 'ativo_pinterest'
end