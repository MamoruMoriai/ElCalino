Rails.application.routes.draw do
  root "tops#index"
  resources :foods, except: [:index]
  resources :drinks, except: [:index]
  resources :blogs
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get "bad_request" => "tops#bad_request"
  get "internal_server_error" => "tops#internal_server_error"
  match "*anything" => "tops#not_found", via: [:get, :post, :patch, :delete]
end
