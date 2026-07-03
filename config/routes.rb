Rails.application.routes.draw do
  root "cars#index"
  resources :cars

  get "up" => "rails/health#show", as: :rails_health_check
end
