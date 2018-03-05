Rails.application.routes.draw do
  root to: 'pinterest#index'
  get 'pinterest/index'
  put 'pinterest/ativo/:id' => 'pinterest#ativo', :as => 'ativo_pinterest'
  post 'pinterest/create' => 'pinterest#create'
end