Outdoorsy::Application.routes.draw do
  devise_for :users
  resources :comments, :only => [:create]
 end
