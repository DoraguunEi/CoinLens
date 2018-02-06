Rails.application.routes.draw do
  root 'pages#home'
  #root 'welcome#index'

  get '/about', to: 'pages#about'

  get '/features', to: 'pages#features'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  get '/login', to: 'pages#login'

  get '/news', to: 'pages#news'

  get '/register', to: 'users#register'
end
