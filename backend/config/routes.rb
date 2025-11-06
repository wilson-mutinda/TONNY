Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'create_user', to: 'users#create_user'
      get 'single_user/:slug', to: 'users#single_user'
      get 'all_users', to: 'users#all_users'
      patch 'update_user/:slug', to: 'users#update_user'
      delete 'delete_user/:slug', to: 'users#delete_user'
      get 'restore_user/:slug', to: 'users#restore_user'

      post 'user_login', to: 'users#user_login'
    end
  end
end
