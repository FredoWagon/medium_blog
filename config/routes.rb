Rails.application.routes.draw do


  root 'article#index'

  # Articles
  get "/article/:id", to: "article#show"
  get "/article/new", to: "article#new"
  post "/article", to: "article#create"


  post 'comment/create'

  post 'upvote/create'

  # Authentification
  devise_for :users

  # Comments



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
