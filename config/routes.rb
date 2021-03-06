Rails.application.routes.draw do

  resources :types
  resources :patients
  resources :physicians
  resources :specialties
  root 'agenda#index'
 
  get 'agenda', to: 'agenda#index'
  
  #namespace :agenda do
  #  resources :especialidad do
  #    resources :medico do
  #      resources :appointments do
  #        collection do
  #          get :pacientes
  #        end
  #      end
  #    end
  #  end
  #end
  namespace :agenda do
    get "/:specialty_slug" => 'especialidad#index', as: :especialidad
  end
  namespace :agenda do
    get "/:specialty_slug/:physician_slug" => 'appointments#index', as: :especialidad_medico
  end
  namespace :agenda do
    get "/:specialty_slug/:physician_slug/:date" => 'appointments#new', as: :capturar
  end
  namespace :agenda do
    post "/:specialty_slug/:physician_slug/" => 'appointments#pacientes', as: :search
  end
  namespace :agenda do
    post "/:specialty_slug/:physician_slug/crear" => 'appointments#create', as: :create
  end





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




  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
