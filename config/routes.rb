Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy' 
    
  end
  
  
  root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'
end

