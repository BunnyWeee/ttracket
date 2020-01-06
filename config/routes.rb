Rails.application.routes.draw do
  resources :rackets

  root 'rackets#index'
end
