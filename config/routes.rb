Spree::Core::Engine.routes.prepend do
  
  namespace :admin do
    resources :orders do
      member do
        get :invoice
      end
    end
  end
  
end
