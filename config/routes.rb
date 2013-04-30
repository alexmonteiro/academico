AcademicoRails::Application.routes.draw do

  #resources :registration_admission_types

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",
                                       :registrations => "users/registrations",
                                       :confirmations => "users/confirmations",
                                       :sessions => 'devise/sessions' },
             :skip => [:sessions, :registrations] do
    get  'entrar'   => "devise/sessions#new",       :as => :new_user_session
    post 'entrar'  => 'devise/sessions#create',    :as => :user_session
    get 'sair'  => 'devise/sessions#destroy',   :as => :destroy_user_session
    get "assinar" => "academicusers/user_registrations#new",   :as => :new_user_registration
    #get '/auth/:provider/callback' => 'users/omniauth_callbacks#create'

  end
  get '/auth/:provider/callback' => 'users/omniauth_callbacks#create'

  match 'people/update_state_select/:id', :controller=>'people', :action => 'update_state_select'
  match 'people/update_city_select/:id', :controller=>'people', :action => 'update_city_select'
  match 'discipline_classes/update_discipline_select/:id', :controller=>'discipline_classes', :action => 'update_discipline_select'


  root :to => 'welcome#index'
  
  # Tabelas Básicas do SISTEMA
  
  #######################################
  # Menusuperior de Registro Academicos #
  #######################################
  resources :registro_academico, :controller => 'menu/registro_academico', :only => [:index], :path => 'registro_academico'
  # Matrículas
  resources :registrations, :path =>"registro_academico/matriculas" do
      resources :registration_classes, :path =>"enturmacoes"
  end
  # Pessoas
  resources :people, :path =>"registro_academico/pessoas" do
    resources :people_telephones, :path =>"telefones"
    resources :person_addresses, :path =>"enderecos"
    resources :person_identification_docs, :path => "documentacao"
    resources :person_person_type_depts
    

    get :pesquisar, :on => :collection
    resources :registrations, :path =>"matriculas" do
        resources :registration_classes, :path =>"enturmacoes"
    end
  end
  # Departamento
  resources :depts, :path => "registro_academico/departamentos" do
    resources :courses, :path => "cursos"
    resources :teaching_equipaments, :path => "equipamentos_de_ensino"
    resources :dept_addresses, :path => "enderecos"
    resources :dept_telephones, :path => "telefones"
  end
  # Matriz  Curricular
  resources :course_matrices, :path => "registro_academico/matrizcurricular" do
    # Disciplinas da Matriz
    resources :matrix_disciplines, :path => "disciplinas" do
      # pré requisitos
      resources :matrix_discipline_prerequisites, :path => "prerequisitos"
    end
    # grade horaria da Matriz
    resources :timetables, :path =>"gradehoraria" do
      resources :timetable_class_times, :path =>"horas"
    end
    #importa grade horaria
    match 'import_matrix_timetable', :controller=>'course_matrices', :method => :put, :action => 'import_matrix_timetable'
    
    # turmas da Matriz
    resources :school_classes, :path =>"turmas" do
      resources :discipline_classes, :path =>"classes" do
        resources :class_teachings, :path =>"docencias"
        resources :class_records, :path =>"aulas" do
            resources :class_record_presences, :path => "presencas"
        end
        resources :discipline_class_exams, :path => "avaliacoes" do
            resources :discipline_class_exam_results, :path => "notas"
            match 'import_registration_to_exam_result', :controller=>'discipline_class_exam_results', :method => :put, :action => 'import_registration_to_exam_result'
        end
      end
    end
    # Regras acadêmicas da Matriz
    resources :course_matrix_academic_rules, :path => "regrasacademicas" do
      put :register_rules, :on => :collection
    end
    #match 'register_rules', :controller=>'course_matrix_academic_rules', :method => :put, :action => 'register_rules'
  end
  
  # Turmas
  resources :school_classes, :path =>"registro_academico/turmas" do
    # Classes das turmas
    resources :discipline_classes, :path =>"classes" do
      resources :class_teachings, :path =>"docencias"
      resources :class_records, :path =>"aulas" do
          resources :class_record_presences, :path => "presencas"
      end
      resources :discipline_class_exams, :path => "avaliacoes" do
          resources :discipline_class_exam_results, :path => "notas"
          match 'import_registration_to_exam_result', :controller=>'discipline_class_exam_results', :method => :put, :action => 'import_registration_to_exam_result'
      end
    end
  end  

  # Classes  
  resources :discipline_classes, :path =>"registro_academico/classes" do
    #match 'close', :controller=>'discipline_classes', :method => :put, :action => 'close'
    put 'close'
    resources :class_teachings, :path =>"docencias"
    # Aulas ministradas
    resources :class_records, :path =>"aulas" do
        
        get :class_record_presences_day, :on => :collection # Chamada de uma classe por dia
        put 'update_presences_by_date', :on => :collection, :controller => :class_records, :action => 'update_presences_by_date'
        
        resources :class_record_presences, :path => "presencas"
        get :classdateselect, :on => :collection # calendário para inclusao de aulas
        get :new_many, :on => :collection # inclusao de varias aulas
        post :create_many, :on => :collection # create de varias aulas
        match 'presencas', :controller=>'class_record_presences', :method => :put, :action => 'update_presence'
        match 'import', :controller=>'class_record_presences', :method => :put, :action => 'import_registration_to_presence'
    end
    # Avaliações
    resources :discipline_class_exams, :path => "avaliacoes" do
        resources :discipline_class_exam_results, :path => "notas"
        match 'notas', :controller=>'discipline_class_exam_results', :method => :put, :action => 'update_results'
        match 'import_registration_to_exam_result', :controller=>'discipline_class_exam_results', :method => :put, :action => 'import_registration_to_exam_result'
    end
    resources :registration_classes, :path =>"enturmacoes"
    match 'enturmacoes', :controller=>'registration_classes', :method => :put, :action => 'create_registration_classes'
  end
  
  # Oferta de Vagas
  resources :course_vacancies, :path => "registro_academico/ofertadevagas"
  # Periodo Letivo
  resources :class_seasons, :path => "registro_academico/periodosletivos"
  # Cursos
  resources :courses, :path => "registro_academico/cursos" do
      resources :disciplines, :path => "registro_academico/disciplinas"
  end
  # Regras acadêmicas
  resources :academic_rules, :path => 'registro_academico/regras_academicas'
  
  
  
  
  
  #################################
  # Menusuperior de Configurações #
  #################################
  resources :config, :controller => 'menu/config', :only => [:index], :path => 'configuracoes'
  resources :races, :path => 'configuracoes/etnias'
  resources :admission_types, :path => 'configuracoes/tipos_de_ingressos'
  resources :special_needs_types, :path => 'configuracoes/tipo_necessidade_especial'
  resources :marital_statuses, :path => 'configuracoes/estado_civil'
  resources :education_degrees, :path => 'configuracoes/niveis_educacionais'
  resources :genders, :path => 'configuracoes/sexos'
  resources :blood_types, :path => 'configuracoes/tipos_sanguineos'
  resources :knowledge_areas, :path => "configuracoes/areas_conhecimento"
  resources :registration_schemes, :path => "configuracoes/sistema_registro"
  resources :learning_modalities, :path => "configuracoes/modalidades_ensino"
  resources :education_modalities, :path => "configuracoes/modalidades"
  resources :education_steps, :path => "configuracoes/graus" 
  resources :education_levels, :path => "configuracoes/niveis"
  resources :techaxis_types, :path => "configuracoes/eixos" do
   resources :techaxes, :path => "areas"
  end
  resources :provenance_areas, :path => 'configuracoes/procedencia'
  resources :street_types, :path => 'configuracoes/logradouro'
  resources :telephone_types, :path => 'configuracoes/telefones'
  resources :class_season_types, :path => 'configuracoes/periodos'
  resources :matrix_evaluation_types, :path => 'configuracoes/matriz_avaliacoes'
  resources :matrix_statuses, :path => 'configuracoes/estados'
  resources :discipline_types, :path => 'configuracoes/disciplinas'
  resources :countries, :path => 'configuracoes/paises' do
   resources :states, :path => 'estados' do
    resources :cities, :path => 'cidades'
   end
  end
  match 'countries/update_state_select/:id', :controller=>'countries', :action => 'update_state_select'
  match 'countries/update_city_select/:id', :controller=>'countries', :action => 'update_city_select'
  resources :class_times, :path => 'configuracoes/horarios_classe'
  resources :day_weeks, :path => 'configuracoes/dias_semana'
  resources :equipament_types, :path => 'configuracoes/equipamento'
  resources :situation_teaching_equipaments, :path => 'configuracoes/estado_equipamento'
  resources :shift_types, :path => "turnos"
  

  resources :academic_rule_types, :path => 'configuracoes/regras_academicas'
  resources :discipline_class_exam_types, :path => 'configuracoes/exames_classe'
  resources :class_record_types, :path => 'configuracoes/tipos_registro_classe'
  resources :registration_class_statuses, :path => 'configuracoes/estado_registro_classe'
  resources :registration_statuses, :path => 'configuracoes/estado_registro'
  resources :course_statuses, :path => 'configuracoes/cursos'
  resources :class_student_statuses, :path => 'configuracoes/estados_classe_estudante'
  resources :military_document_types, :path => 'configuracoes/documentos_militar'
  resources :issuing_institutions, :path => 'configuracoes/emissoras'
  resources :matrix_discipline_groups, :path => 'configuracoes/matriz_disciplina'
  resources :dept_types, :path => 'configuracoes/departamentos'
  
  # dynamic erros
  match '(errors)/:status', :to => 'errors#show', :constraints => {:status => /\d{3}/} #, :via => :all
end
