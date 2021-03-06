Rails.application.routes.draw do
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'

  get 'pdf/show'

  resources :practices

  resources :goals

  resources :processareas

  get 'processmap/match'

  resources :base_line_documents
  resources :base_lines
  resources :project_steps
  resources :project_step_ms
  resources :step_ms
  resources :formats
  resources :documents
  resources :base_lines
  resources :project_ns
  resources :project_steps
  resources :companies
  resources :steps
  resources :roles
  resources :projects
  resources :processareas
  resources :practices
  resources :levels
  resources :goals
  resources :goals
  devise_for :users

  resources :resumes, only: [:index, :new, :create, :destroy]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root :to => 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

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
  #arrierWaveExample::Application.routes.draw do
  # resources :resumes, only: [:index, :new, :create, :destroy]
  # root "resumes#index"
  #end
end
