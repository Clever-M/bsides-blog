Rails.application.routes.draw do
  resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_posts#index"
  resources :blog_posts
end
