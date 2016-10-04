Rails.application.routes.draw do
  resources :posts, module: ROUTE_MAP[:post], as: :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "#{ROUTE_MAP[:post]}/posts#index"
end
