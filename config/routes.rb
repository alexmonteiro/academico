AcademicoRails::Application.routes.draw do

  match 'people/update_state_select/:id', :controller=>'people', :action => 'update_state_select'
  match 'people/update_city_select/:id', :controller=>'people', :action => 'update_city_select'
  match 'discipline_classes/update_discipline_select/:id', :controller=>'discipline_classes', :action => 'update_discipline_select'


  root :to => 'welcome#index'
  
  # Tabelas Básicas do SISTEMA
  
  #######################################
  # Menusuperior de Registro Academicos #
  ######################################
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
        resources :class_record_presences, :path => "presencas"
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
  resources :special_needs_types
  resources :marital_statuses
  resources :education_degrees
  resources :genders, :path => 'configuracoes/sexos'
  resources :blood_types  
  resources :knowledge_areas
  resources :registration_schemes
  resources :learning_modalities
  resources :education_modalities, :path => "configuracoes/modalidades"
  resources :education_steps, :path => "configuracoes/graus" 
  resources :education_levels, :path => "configuracoes/niveis"
  resources :person_addresses
  resources :techaxis_types, :path => "configuracoes/eixos" do
   resources :techaxes, :path => "areas"
  end
  resources :education_steps
  resources :provenance_areas
  resources :street_types
  resources :telephone_types
  resources :class_season_types
  resources :matrix_evaluation_types
  resources :matrix_statuses
  resources :discipline_types
  resources :countries, :path => 'configuracoes/paises' do
   resources :states, :path => 'estados' do
    resources :cities, :path => 'cidades'
   end
  end
  match 'countries/update_state_select/:id', :controller=>'countries', :action => 'update_state_select'
  match 'countries/update_city_select/:id', :controller=>'countries', :action => 'update_city_select'
  resources :class_times
  resources :day_weeks
  resources :equipament_types
  resources :situation_teaching_equipaments
  resources :shift_types, :path => "turnos"
  

  resources :academic_rule_types
  resources :discipline_class_exam_types
  resources :class_record_types
  resources :registration_class_statuses
  resources :registration_statuses
  resources :course_statuses
  resources :class_student_statuses
  resources :military_document_types
  resources :issuing_institutions
  resources :matrix_discipline_groups
  resources :dept_types  
  
  
  
  




end
