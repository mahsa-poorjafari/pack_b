PackB::Application.routes.draw do
  resources :agents

  resources :photos

  scope "(:locale)", :locale => /en|fa/ do  
    resources :pictures
    resources :user_messages

    resources :messages

    resources :categories
    
    resources :products
    resources :licenses

    resources :slides

    resources :users

    resources :pages
  end
  mount Ckeditor::Engine => '/ckeditor'
  
  root :to => 'static#home'
  get "login" => "users#login"  
  get "googlebc5f5c16062b24b0" => "static#googlebc5f5c16062b24b0"  
  get "sitemap.xml" => "static#sitemap", :format => "xml", :as => :sitemap
  post "create_session" => "users#create_session", :as => :create_session
  get "delete_session" => "users#delete_session", :as => :delete_session

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
