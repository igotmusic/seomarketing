Seo::Application.routes.draw do

  ##### for internationalization
  scope "/:locale" do

    resources :home
    resources :how_it_works
    resources :faq
    resources :partners
    resources :about_us
    resources :signup, :except => :index
    resources :privacy_policy
    resources :terms_of_service
    root :to => "home#index"

    match '/:locale/how_it_works' => 'how_it_works#index', :as => 'how_it_works', :via => :get, :path => 'how-it-works'
    match '/:locale/faq' => 'faq#index', :as => 'faq', :via => :get, :path => 'faq'
    match '/:locale/partners' => 'partners#index', :as => 'partners', :via => :get, :path => 'partners'
    match '/:locale/about' => 'about#index', :as => 'about', :via => :get, :path => 'about'
    match '/:locale/signup' => 'signup#new', :as => 'signup', :via => :get, :path => 'signup'
    match '/:locale/signup' => 'signup#create', :as => 'signup', :via => :post, :path => 'signup'
    #match '/:locale/signup' => 'signup#index', :as => 'signup', :via => :get, :path => 'signup'
    match '/:locale/privacy_policy' => 'privacy_policy#index', :as => 'privacy_policy', :via => :get, :path => 'privacy-policy'
    match '/:locale/terms_of_service' => 'terms_of_service#index', :as => 'terms_of_service', :via => :get, :path => 'terms-of-service'

  end

  #####

  #resources :signup, :except => :index
  #match 'signup' => 'signup#new', :as => 'signup', :via => :get
  #match 'signup' => 'signup#create', :as => 'signup', :via => :post
  #match 'faq' => 'faq#index', :as => 'faq', :via => :get
  #match 'terms_of_service' => 'terms_of_service#index', :as => 'terms_of_service', :via => :get, :path => 'terms-of-service'
  #match 'privacy_policy' => 'privacy_policy#index', :as => 'privacy_policy', :via => :get, :path => 'privacy-policy'
  #match 'partners' => 'partners#index', :as => 'partners', :via => :get
  #resources :how_it_works, :path => 'how-it-works'
  #match 'about' => 'about#index', :as => 'about', :via => :get
  root :to => "home#index"



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
