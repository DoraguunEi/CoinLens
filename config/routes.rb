Rails.application.routes.draw do
  #root 'welcome#index'
  root 'pages#home'

  #static pages
  get '/about', to: 'pages#about'
  get '/features', to: 'pages#features'
  get '/faq', to: 'pages#faq'
  get '/contact', to: 'pages#contact'
  get '/login', to: 'pages#login'
  get '/news', to: 'pages#news'

  #users
  get '/register', to: 'users#register'
  resources :users
end
