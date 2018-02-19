Rails.application.routes.draw do


  resources :pins
  root to: "pins#index"
  get '/pins/new' => 'pins#new'


end
