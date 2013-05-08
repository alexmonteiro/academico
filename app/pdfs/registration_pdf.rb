class RegistrationPdf < Prawn::Document
  def initialize(opcoes)
    #template with header
    template_filename = "#{Rails.root}/app/pdfs/templates/full_template.pdf"
    super(:top_margin => 110, :template => template_filename)
    #super()
    
    # PDF da Declaração de Escolaridade e Passe Estudantil
    @registration = opcoes[:registration]
    @type_document = opcoes[:type_document]
    header_complement
    stroke_horizontal_line 0, 550, :at => 655
    title
    stroke_horizontal_line 0, 550, :at => 620     
    content
    sign_area
    footer                
  end
  
  def content
    
            #array dos dias de aula da grade horaria e horas minima e maxima das grades
            days = []
            #horas com "xx:xxh : xx:xxh"
            hours = []
            #horas com "de xx:xxh as xx:xxh"
            hours_as = []
            
            #loop entre as grades horarias pegando o dia e as horas [a primeira e a ultima do dia]
            if @registration.course_matrix.timetables.order(:day_week_id).each do |week|
              if @registration.course_matrix.timetables.last
                  days << week.day_week.description
                else
                  days <<  week.day_week.description
                end
                  hours << [( week.day_week.description  + " : " + week.timetable_class_times.first.class_time.try(:started_at) + "-" + week.timetable_class_times.last.class_time.try(:ended_at)  + "\n")]
                  hours_as << [( week.timetable_class_times.first.class_time.try(:started_at) + " as " + week.timetable_class_times.last.class_time.try(:ended_at))]     
              end
             end 

            move_down 30
            font("Courier", :size => 12) do
               tabela = [["Matricula","#{@registration.registration_number}"],
                         ["Nome do(a) aluno(a)", "#{@registration.person.try(:name)}"],
                         ["Naturalidade/UF", "#{@registration.person.try(:city).try(:name)} / #{@registration.person.try(:city).try(:state).try(:acronym)}"],
                         ["Data de nascimento", "#{@registration.person.try(:birth_date).strftime('%d/%m/%Y')}"],
                         ["Identidade", "#{@registration.person.person_identification_doc.try(:model_rg_custom)}"],
                         ["Endereço", "#{@registration.person.person_address.try(:model_full_address)}"],
                         ["Campus", "#{@registration.course_matrix.course.dept.try(:name)}"],
                         ["CNPJ","#{@registration.course_matrix.course.dept.try(:cnpj)}"]]
                       
                       DeptTelephone.where("dept_id" => @registration.course_matrix.course.dept_id).each do |telefone|
                          tabela << ['Telefone',telefone.number]
                       end
               pad(10) { table(tabela, :cell_style => {:borders => []} ) }
               stroke_horizontal_rule        
            end
           #caso o id mude , por alguma forca maior, adpatar para o id atual ou ao correspondente
           if @registration.course_matrix.course.education_modality_id == 25
             font("Courier", :size => 12) do
                 pad(10) { table([ ["#{Prawn::Text::NBSP * 10}Declaramos, para os fins necessários que, o(a) aluno(a) acima identificado(a) está regularmente matriculado(a) para o #{@registration.course_matrix.school_classes.last.period} semestre de #{@registration.course_matrix.course.created_at.year}, no Instituto Federal de Educação, Ciência e Tecnologia de Brasília - Campus #{@registration.course_matrix.course.dept.try(:name)}, no Curso de Formação Inicial e Continuada de #{@registration.course_matrix.course.name}, com aula(s) #{days.join(",")} de #{hours_as.last}."]
                 ], :cell_style => {:borders => []}) }   
               end
            else
              font("Courier", :size => 12) do
                 pad(10) { table([ ["#{Prawn::Text::NBSP * 10}Declaramos, para os fins necessários que o(a) aluno(a) identificado acima está regularmente matriculado(a), no Instituto Federal de Educação, Ciência e Tecnologia de Brasília - #{@registration.course_matrix.course.dept.dept.try(:name)}, no Curso  #{@registration.course_matrix.course.name}."]
                 ], :cell_style => {:borders => []}) }
              end
            end              
            stroke_horizontal_rule
            

            
            
            font("Courier", :size => 12) do
              if @registration.registration_classes.last.try(:discipline_class).try(:school_class).try(:class_season_id).blank?
                    #informacao padrao caso nao tenha
                    tabela_1 = [ ["Informações complementares:
                                  • Nenhuma turma cadastrada."] ]
                    pad(10) { table(tabela_1, :cell_style => {:borders => []} ) }
                    # se a modalidade for FIC mostrar somente horas e periodo letivo
                     else if @registration.course_matrix.course.education_modality_id == 25
                         tabela_3 = [["Informações complementares:
                                        • Período Letivo: #{ClassSeason.find(@registration.registration_classes.last.try(:discipline_class).try(:school_class).try(:class_season_id)).try(:start_at).strftime("%d/%m/%Y")} a #{ClassSeason.find(@registration.registration_classes.last.try(:discipline_class).try(:school_class).try(:class_season_id)).try(:end_at).strftime("%d/%m/%Y")}.
                                        • Carga horária total do curso: #{@registration.course_matrix.matrix_workload} horas."]]
                          pad(10) { table(tabela_3, :cell_style => {:borders => []} ) }
                     else 
                     #informacoes caso aluno tenha turma   
                    tabela_2 = [ ["Informações complementares:
                                  • Período Letivo: #{ClassSeason.find(@registration.registration_classes.last.try(:discipline_class).try(:school_class).try(:class_season_id)).try(:start_at).strftime("%d/%m/%Y")} a #{ClassSeason.find(@registration.registration_classes.last.try(:discipline_class).try(:school_class).try(:class_season_id)).try(:end_at).strftime("%d/%m/%Y")}.
                                  • Carga horária total do curso: #{@registration.course_matrix.matrix_workload} horas.
                                  • Período: #{@registration.course_matrix.school_classes.last.period}
                                  • Horarios: \n#{hours}"]]               
                                  
                    pad(10) { table(tabela_2, :cell_style => {:borders => []} ) }
                  end
              end
 
            end                    
            stroke_horizontal_rule
  end
    
  def header_complement
    font("Helvetica", :size => 16, :style => :bold) do
      text_box "#{@registration.course_matrix.course.dept.dept.try(:name)}", 
      :at => [45, 700], 
      :align => :center 
    end     
    font("Helvetica", :size => 8, :style => :bold) do
      text_box "Criado pela Lei No. 11.892, de 29/12/2008, DOU No. 253, 30/12/2008, Seção I", 
      :at => [45, 680], 
      :align => :center 
    end   

  end
  
  def title
    font("Times-Roman", :size => 20, :style => :bold ) do
      documento = ""
      if @type_document == "escolaridade"
        documento = "de Escolaridade"
      elsif @type_document == "passe_estudandil"
        documento = "para Aquisição de Passe Estudantil"
      end
     text_box "Declaração #{documento}", 
     :at => [45, 645], 
     :align => :center
    end
  end

  def sign_area
    font("Helvetica", :size => 12, :style => :bold) do
      text_box "Brasília-DF, #{I18n.localize(Date.today, :format => :long)}", 
      :at => [40, 100], 
      :align => :left 
    end   
    stroke_horizontal_line 150, 400, :at => 60, :align => :center
    font("Helvetica", :size => 8, :style => :bold) do
      text_box "Assinatura", 
      :at => [0, 58], 
      :align => :center 
    end    
  end
  
  def footer
  stroke_horizontal_line 0, 550, :at => 25, :align => :center
  font("Helvetica", :size => 8, :style => :bold) do
    text_box "#{@registration.course_matrix.course.dept.dept.try(:name)}", 
    :at => [0, 20], 
    :align => :right 
    text_box "#{@registration.course_matrix.course.dept.dept_address.try(:model_full_address)}", 
    :at => [0, 10], 
    :align => :right  
   end
  end
 end 