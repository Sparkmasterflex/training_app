CatfishTriathlon::Application.routes.draw do
  devise_for :users

  resources :users, path: '/members'
  resources :dashboard, only: :index

  root to: "dashboard#index"
end
