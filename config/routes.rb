Rails.application.routes.draw do
  devise_for :admins
  devise_for :ses,  :controllers => {:registrations => "registrations"}

  get 'welcome/index'
  devise_scope :se do
    get "ses/sign_out", to: "devise/sessions#destroy"
  end
resources :activities
resources :offers


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

   get 'leader', to: 'welcome#leader'
   get 'offer', to: 'activities#new'
   get 'myactivities', to: 'activities#index'
   get 'home', to: 'welcome#index'


   get 'ses/leader', to: 'welcome#leader'
   get 'ses/home', to: 'welcome#index'
   get 'ses/offer', to: 'activities#new'
   get 'ses/myactivities', to: 'activities#index'
   get 'ses/offer/new', to: 'offers#new'


   get 'activities/leader', to: 'welcome#leader'
   get 'activities/home', to: 'welcome#index'
   get 'activities/offer', to: 'activities#new'
   get 'activities/myactivities', to: 'activities#index'


   get 'offer/leader', to: 'welcome#leader'
   get 'offer/home', to: 'welcome#index'
   get 'offer/offer', to: 'activities#new'
   get 'offer/myactivities', to: 'activities#index'

   get 'offer/new', to: 'offers#new'



   get 'ses/activities/leader', to: 'welcome#leader'
   get 'ses/activities/offer', to: 'activities#new'
   get 'ses/activities/home', to: 'welcome#index'
   get 'ses/activities/myactivities', to: 'activities#index'

   get 'ses/activities/new', to: 'activities#new'

   get 'ses/confirmation/leader', to: 'welcome#leader'
   get 'ses/confirmation/offers', to: 'activities#new'
   get 'ses/confirmation/myactivities', to: 'activities#index'
   get 'ses/confirmation/home', to: 'welcome#index'

   get 'ses/password/leader', to: 'welcome#leader'
   get 'ses/password/offers', to: 'activities#new'
   get 'ses/password/myactivities', to: 'activities#index'
   get 'ses/password/home', to: 'welcome#index'


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
