Rails.application.routes.draw do
  get "users/index"
  get "users/show"
  get "projects/index"
  get "projects/show"
  get "home/index"
  constraints subdomain: /.+/ do
    resources :projects
    resources :users
    root to: 'projects#index', as: :tenant_root
  end
  
  root to: 'home#index', as: :public_root
  
end
