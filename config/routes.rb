Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  devise_for :users, :controllers => { registrations: "registrations" }
  resources :contacts

  root to: "pages#index"
  get "pages/contact"
  get "pages/about"
end
