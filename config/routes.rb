AcademicoRails::Application.routes.draw do

  resources :class_teachings, :path =>"docencias"

  resources :discipline_classes, :path =>"classes" do
    resources :class_teachings, :path =>"docencias"
  end

  resources :school_classes, :path =>"turmas" do
    resources :discipline_classes, :path =>"classes" do
      resources :class_teachings, :path =>"docencias"
    end
  end

  resources :equipament_types

  resources :situation_teaching_equipaments

  resources :course_vacancies, :path => "ofertadevagas"

  resources :shift_types, :path => "turnos"

  resources :matrix_discipline_groups

  resources :matrices, :path => "matrizcurricular" do
    resources :matrix_disciplines, :path => "disciplinas"
  end
  

  resources :matrix_evaluation_types

  resources :matrix_statuses

  resources :discipline_types

  resources :courses, :path => "cursos" do
      resources :disciplines, :path => "disciplinas"
  end

  resources :knowledge_areas

  resources :registration_schemes

  resources :learning_modalities

  resources :education_modalities

  resources :education_steps

  resources :education_levels

  resources :person_addresses

  resources :techaxis_types do
   resources :techaxes
  end

  resources :education_steps

  resources :provenance_areas

  resources :street_types

  resources :telephone_types

  resources :class_seasons, :path => "periodosletivos"

  resources :class_season_types

  get "welcome/index"

  resources :depts, :path => "departamentos" do
    resources :courses, :path => "cursos"
    resources :teaching_equipaments, :path => "equipamentos_de_ensino"
    resources :dept_addresses, :path => "enderecos"
    resources :dept_telephones, :path => "telefones"
  end

  resources :depts

  resources :dept_types

  match 'people/update_state_select/:id', :controller=>'people', :action => 'update_state_select'
  match 'people/update_city_select/:id', :controller=>'people', :action => 'update_city_select'
  match 'discipline_classes/update_discipline_select/:id', :controller=>'discipline_classes', :action => 'update_discipline_select'

  resources :people, :path =>"pessoas" do
    resources :people_telephones, :path =>"telefones"
    resources :person_addresses, :path =>"enderecos"
  end

  resources :special_needs_types

  resources :marital_statuses

  resources :races

  resources :education_degrees

  resources :genders

  resources :blood_types

  resources :cities

  resources :states

  match 'countries/update_state_select/:id', :controller=>'countries', :action => 'update_state_select'
  match 'countries/update_city_select/:id', :controller=>'countries', :action => 'update_city_select'
  resources :countries


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
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
