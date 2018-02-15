Rails.application.routes.draw do
  get 'testing/index'

  get 'sessions/new'

  #root 'welcome#index'
  root 'pages#home'

  #static pages
  get     '/about',     to: 'pages#about'
  get     '/features',  to: 'pages#features'
  get     '/faq',       to: 'pages#faq'
  get     '/contact',   to: 'pages#contact'
  get     '/news',      to: 'pages#news'

  #users
  get     '/register',  to: 'users#new'
  resources :users

  #login session
  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy' 

end
