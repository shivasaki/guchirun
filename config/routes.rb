Rails.application.routes.draw do
  root 'users#index'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  get 'users/delete'

  resources :guchis
  root 'guchis#index'
  get 'guchis/index'
  get 'guchis/new'
  get 'guchis/show'
  get 'guchis/edit'
  get 'guchis/delete'
end
