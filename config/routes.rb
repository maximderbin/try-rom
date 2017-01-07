Rails.application.routes.draw do
  resources :contacts, only: :show
end
