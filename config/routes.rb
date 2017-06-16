Rails.application.routes.draw do
  get "/guchis/index" => "guchis#index"
  resources :guchis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
