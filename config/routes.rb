Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books do
    resources :reviews
  end

  get '/contact', to: 'books#contact'
  get '/sent', to: 'books#sent'
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
