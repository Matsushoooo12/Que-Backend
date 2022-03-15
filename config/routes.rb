Rails.application.routes.draw do
  root 'top#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
