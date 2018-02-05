Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/features'

  get 'pages/faq'

  get 'pages/contact'

  get 'pages/register'

  get 'pages/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
