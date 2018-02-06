Rails.application.routes.draw do
  root 'pages#home'
  #root 'welcome#index'

  get '/about', to: 'pages#about'

  get '/features', to: 'pages#features'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  get '/register', to: 'pages#register'

  get '/login', to: 'pages#login'

  get '/news', to: 'pages#news'
end
