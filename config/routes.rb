AndrewbangelCom::Application.routes.draw do
  # get "work_types/new"
  # get "work_types/show"
  # get "work_types/index"
  # get "work_types/create"
  # get "work_types/edit"
  # get "work_types/destroy"
  # get "work_types/update"
  # get "works/new"
  # get "works/show"
  # get "works/index"
  # get "works/create"
  # get "works/edit"
  # get "works/destroy"
  # get "works/update"

  root 'static_pages#home'
  match '/demoreel', to: 'static_pages#home', via: 'get'

  resources :work_types
  resources :works
  
  # match '/work_types', to: 'work_types#index', via: 'get'
  # match '/work_types', to: 'work_types#create', via: 'post'
  # match '/work_types/:id', to: 'work_types#destroy', via: 'delete', as: 'work_type'
  # match '/work_types/:id', to: 'work_types#update', via: 'patch', as: 'work_type'
  # match '/work_types/:id/edit', to: 'work_types#edit', via: 'get', as: 'work_type'
  # match '/work_types/new', to: 'work_types#new', via: 'get'

  # match '/works', to: 'works#index', via: 'get'
  # match '/works', to: 'works#create', via: 'post'
  # match '/works/:id', to: 'works#destroy', via: 'delete', as: 'work'
  # match '/works/new', to: 'works#new', via: 'get'

  get "static_pages/resume"
  get "static_pages/activity"
  get "static_pages/contact"
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
