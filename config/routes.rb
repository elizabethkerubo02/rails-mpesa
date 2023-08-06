Rails.application.routes.draw do
  # resources :access_tokens
  # resources :callback_urls
  resources :m_pesas
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/stkpush', to: 'm_pesas#stkpush'
  post '/callback_url', to: 'm_pesas#callback'
  post 'stkquery', to: 'm_pesas#stkquery'
end
