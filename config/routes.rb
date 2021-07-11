Rails.application.routes.draw do


  root 'article#index'

  # Articles
  resources :article

  post 'article/make_article_public'


  post 'comment/create'

  post 'upvote/create'

  # Authentification
  devise_for :users

  # Comments



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
