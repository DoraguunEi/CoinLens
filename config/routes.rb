Rails.application.routes.draw do  
  root to: 'home#show'
  scope path: 'admin' do
    authenticate :user, lambda { |u| u.admin? } do
      mount RailsEmailPreview::Engine, at: 'emails'
    end
  end
  
  #static pages
  get     '/about',     to: 'pages#about'
  get     '/features',  to: 'pages#features'
  get     '/faq',       to: 'pages#faq'
  get     '/contact',   to: 'pages#contact'
  get     '/news',      to: 'pages#news'
  get     '/forum',	to: 'pages#forum'



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  mount Thredded::Engine => '/forum'
end
