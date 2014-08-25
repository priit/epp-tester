Rails.application.routes.draw do
  resources :epp_test do
    collection do
      get 'load_xml'
    end
  end
  root 'epp_test#index'
end
