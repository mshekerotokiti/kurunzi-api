Rails.application.routes.draw do

    resources :blog_posts, only: [:index, :show ]
    resources :categories, only: [:index]
    resources :kurunzi_shop, only: [:index, :show]
    resources :services, only: [:index, :show]

    root to: 'home#index'
get '*path', to: 'home#index', constraints: ->(request) { !request.xhr? && request.format.html? }

  
end
