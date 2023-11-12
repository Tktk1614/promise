Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'tweets'=> 'tweets#index'
  get 'tweets/new'=> 'tweets#new'
  post 'tweets' => 'tweets#create'
  root 'tweets#index'
  get 'tweets/match'=> 'tweets#match'
end
