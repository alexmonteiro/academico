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

  match 'states/update_state_select/:id', :controller=>'states', :action => 'update_state_select'
  match 'cities/update_city_select/:id', :controller=>'cities', :action => 'update_city_select'
  match 'cities/autocomplete_city_name', :controller=>'cities', :action => 'autocomplete_city_name'
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
    resources :teaching_equipaments, :path => "equipamentosdeensino"
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
      resources :discipline_classes, :path =>"componentescurriculares" do
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
    resources :discipline_classes, :path =>"componentescurriculares" do
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
  resources :discipline_classes, :path =>"registro_academico/componentescurriculares" do
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
  
  resources :config, :controller => 'menu/config', :only => [:index], :path => 'configuracoes'
  scope "configuracoes" do  
    #################################
    # Menusuperior de Configurações #
    #################################
    resources :races, :path => 'etnias'
    resources :admission_types, :path => 'tipos_de_ingressos'
    resources :ways_of_admissions, :path => 'formas_de_ingressos'
    resources :precedence_schools, :path => 'precedencias_escolares'
    resources :special_needs_types, :path => 'tipo_necessidade_especial'
    resources :marital_statuses, :path => 'estado_civil'
    resources :education_degrees, :path => 'niveis_educacionais'
    resources :genders, :path => 'sexos'
    resources :blood_types, :path => 'tipos_sanguineos'
    resources :knowledge_areas, :path => "areas_conhecimento"
    resources :registration_schemes, :path => "sistema_registro"
    resources :learning_modalities, :path => "modalidades_ensino"
    resources :education_modalities, :path => "modalidades"
    resources :education_steps, :path => "graus" 
    resources :education_levels, :path => "niveis"
    resources :techaxis_types, :path => "eixos" do
     resources :techaxes, :path => "areas"
    end
    resources :provenance_areas, :path => 'procedencia'
    resources :street_types, :path => 'logradouro'
    resources :telephone_types, :path => 'telefones'
    resources :class_season_types, :path => 'periodos'
    resources :matrix_evaluation_types, :path => 'matriz_avaliacoes'
    resources :matrix_statuses, :path => 'estados'
    resources :discipline_types, :path => 'disciplinas'
    resources :countries, :path => 'paises' do
     resources :states, :path => 'estados' do
      resources :cities, :path => 'cidades'
     end
    end

    resources :class_times, :path => 'horarios'
    resources :day_weeks, :path => 'dias_semana'
    resources :equipament_types, :path => 'equipamento'
    resources :situation_teaching_equipaments, :path => 'estado_equipamento'
    resources :shift_types, :path => "turnos"


    resources :academic_rule_types, :path => 'regras_academicas'
    resources :discipline_class_exam_types, :path => 'exames'
    resources :class_record_types, :path => 'tipos_registro'
    resources :registration_class_statuses, :path => 'situacao_curricular'
    resources :registration_statuses, :path => 'situacao_matricula'
    resources :course_statuses, :path => 'cursos'
    resources :class_student_statuses, :path => 'estados_estudante'
    resources :military_document_types, :path => 'documentos_militar'
    resources :issuing_institutions, :path => 'emissoras'
    resources :matrix_discipline_groups, :path => 'matriz_disciplina'
    resources :dept_types, :path => 'departamentos'

    
    #users_role  
    resources :user_roles, :path => "acesso"    

  end
  
  #espaço do professor
  resources :teacher, :controller => 'teacher/dashboard', :path => 'professor' do      
      get :calendar_classes, :on => :collection, :controller => 'teacher/dashboard', :action => 'classes_calendar', :path => 'calendario'
      
      get :teacher_school_classes, :on => :collection, :controller => 'teacher/dashboard', :action => 'teacher_school_classes', :path => 'minhas_turmas'
      
      resources :school_classes, :path =>"turma" do
        resources :discipline_classes, :path =>"componentescurriculares" do
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
      
      
      
      
      #get :school_classes, :on => :collection, :controller => 'teacher/dashboard', :action => 'school_classes', :path => 'turmas' do
      #end

  end
  
  # about
  resources :about, :controller => 'menu/about', :only => [:index], :path => 'sobre'
  
  # dynamic erros
  match '(errors)/:status', :to => 'errors#show', :constraints => {:status => /\d{3}/} #, :via => :all
  
end
