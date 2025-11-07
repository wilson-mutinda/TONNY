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
      get 'refresh_token', to: 'users#refresh_token'

      # categories
      post 'create_category', to: 'categories#create_category'
      get 'single_category/:slug', to: 'categories#single_category'
      get 'all_categories', to: 'categories#all_categories'
      patch 'update_category/:slug', to: 'categories#update_category'
      delete 'delete_category/:slug', to: 'categories#delete_category'
      get 'restore_category/:slug', to: 'categories#restore_category'
    end
  end
end
