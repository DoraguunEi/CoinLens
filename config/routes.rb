Rails.application.routes.draw do
  root 'pages#home'
  #root 'welcome#index'
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/features'

  get 'pages/faq'

  get 'pages/contact'

  get 'pages/register'

  get 'pages/login'
end
