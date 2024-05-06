Rails.application.routes.draw do
  get 'services/index'
  get 'services/show'
  get 'kurunzi_shop/index'
  get 'kurunzi_shop/show'
  get 'categories/index'
  get 'blog_posts/index'
  get 'blog_posts/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
