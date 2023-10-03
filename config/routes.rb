Rails.application.routes.draw do
  resources :plants
  resources :waters

  root 'waters#index'
end
