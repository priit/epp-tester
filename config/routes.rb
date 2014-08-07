Rails.application.routes.draw do
  resources :epp_test
  root 'epp_test#index'
end
