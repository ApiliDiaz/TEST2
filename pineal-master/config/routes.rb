Rails.application.routes.draw do
  resources :bools
  resources :options
  resources :postulants
  resources :vicepresidencies
  resources :managements
  resources :superintendences
  resources :contests do
      post 'complete'
      post 'incomplete'
  end
  resources :positions
  resources :origins
  devise_for :users
  root :to => 'contests#index'
  resources :records
  get 'records_data', to: "charts#records_data", as: "records_data"
  get 'download', to: "records#download"
end
