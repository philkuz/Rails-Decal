Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture/:id', to: 'pokemon#capture', as: 'capture'
  patch '/damage/:id', to: 'trainers#damage', as: 'damage'
end
