Rails.application.routes.draw do
  resources :waters

  root 'waters#index'
end
