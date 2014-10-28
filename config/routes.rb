Rails.application.routes.draw do
post '/rules/sendto_sugg'
get '/rules/mail_us'
post 'rules/mail_send'
get 'rules/about'
 get'rules/index' 
get 'rules/search'
get 'auth/:provider/callback', to: 'sessions#create'
  get '/sessions/destroy'
get 'rules/update_rule'
  post 'rules/update_insert'
  post 'users/reg'

  get 'users/signin'

  get 'users/logout'
get 'rules/total_rule'
get 'rules/delete_rule'
  get 'rules/rule'
  get 'rules/comment'
 get 'rules/home'
  post 'rules/law_insert'
  post '/rules/comment_insert'
  get 'rules/delete_comment'
  post "rules/like_insert"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'rules#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
