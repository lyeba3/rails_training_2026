Rails.application.routes.draw do
  root "tickets#index"

  resources :tickets do
    member do
      patch :resolve
    end
  end
end