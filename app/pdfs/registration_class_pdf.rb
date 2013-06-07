class RegistrationClassPdf < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :landscape, :page_size => "A4")
    #super()
    @discipline_class = params[:discipline_class]
    @preenchido = params[:preenchido]
    @discipline_class.class_records.reverse!
    #variaveis de Controle
      @number_classes_by_page = 30 #Este valor não pode ser menos que 3 nem mais que 22 Quando o total de faltas estiver habilitado
      @classes_count = @discipline_class.class_records.count
      @repetitions = @classes_count.div @number_classes_by_page
      @rest = @classes_count.modulo @number_classes_by_page
    #Fim Variáveis de Controle
       
    #Cabeçalho
    repeat(:all) do
      title
      information
    end
    #Fim do Cabeçalho
    #Corpo do Relatório
    if @preenchido.blank?
      content_blank
    else
      for i in 1..(@repetitions+1)
        content(:iteracao => i)
        start_new_page if ((@repetitions+1) != i) 
      end
    end
    
    #Fim Corpo do Relatório
    #Rodape
    foot
    #Fim do Rodape
  end
  
  #Metodo Que Desenha As Informações Sobre a Logo, Titulo Instituto, Diário, Relatório de Frequencia... 
  def title
    image "app/assets/images/ifbhorizontal_logo.jpg", :at => [0,550], :width => 110, :height => 45
    #text_box "Instituto Federal de Brasília", :at => [50,547], :size => 8, :style => :bold
    text_box "Diário de Frequência", :at => [135,547], :size => 12, :style => :bold
    #text_box "#{@discipline.discipline_year.blank? ? " " : "#{@discipline.discipline_year.strftime('%Y')}.#{@discipline.school_class_period}"}", :at => [], :size => 8
    move_down(15)
  end
  
  #Método que desenha as informações sobre o relatório como Classe, Curso, Professor...
  def information
    font_size 8
    data_header = [["<b>Classe:</b> #{@discipline_class.school_class.model_custom_tiny_name}", "<b>Unidade Organizacional:</b> #{@discipline_class.discipline_class_dept}"],
                      ["<b>Curso:</b> #{@discipline_class.school_class.model_course_matrix}", "<b>Elemento Curricular:</b> #{@discipline_class.discipline_name}"],
                      ["<b>Professor:</b> #{@discipline_class.discipline_teaches}", "<b>Aulas Ministradas/Previstas:</b> #{@discipline_class.discipline_class_classes_taught_planned}"],
                      ["", "<b>Carga Horária:</b> #{@discipline_class.discipline_class_workload}"]]
    move_up(27)
    bounding_box([300, 550], :width => 2200, :height => 250) do 
      table(data_header, :width => 515, :cell_style => { :inline_format => true }) do
        row(0..3).borders = []
        row(0..3).columns(0..1).width = 257.5
        row(0..3).padding = [2,2,2,2]   
      end
    end
  end
  
  def content_blank
    header_table = [["Nº","Matrícula","Nome"] + [""]*@number_classes_by_page]
    @discipline_class.class_records_sort_by_name.each_with_index do |student, j|
       if !student.registration.registration_status.is_attending.blank?
          header_table += [["#{j + 1}","#{student.student_registration_number}","#{student.student_name}"] + [" "]*@number_classes_by_page]
       end   
    end
    bounding_box([-10, 480], :width => 2200, :height => 425) do #Determina a posição que a tabela se encontra e o tamanho
      font_size 8
      data_type = [["Legenda para F e C: F - Falta e C - Comparecimento"]]
      #Desenha a Tabela
      table(header_table, :header => true) do |table, p|
        p = {:registration_class_count => @discipline_class.registration_classes.count, :number_classes_by_page => @number_classes_by_page} # Array de variaveis para valores dos atributos
        
        table.column(0..(p[:number_classes_by_page]+2)).align = :center
        
        table.row(1..p[:registration_class_count]).padding = [1,1,1,1]
        table.column(2).row(1..p[:registration_class_count]).align = :left
        table.columns(1).width = 67
        table.columns(2).width = 125
        
        #Atributos Para Resultados Finais => "Total de Presenças","Total de Faltas","% de Faltas"
        # table.column((p[:number_classes_by_page]+3)).width = 60
        # table.column((p[:number_classes_by_page]+4)).width = 35
        # table.column((p[:number_classes_by_page]+5)).width = 35
        # table.column(3..(p[:number_classes_by_page]+5)).align = :center
        #Atributos para a parte das datas
        table.row(0).column(3..p[:number_classes_by_page]+2).width = 19
        table.row(0).column(3..p[:number_classes_by_page]+2).height = 40
        table.row(0).column(3..p[:number_classes_by_page]+2).rotate = 90
        table.row(0).column(3..p[:number_classes_by_page]+2).padding = [33,-15,-20,5]
      end
      table(data_type, :width => 775) do
        row(0).columns(0).width = 775
        row(0).align = :center
        row(0).borders = []
      end
    end
    self.signatures_and_subtitles
  end
  
  def content(params = {})
    iteracao = params[:iteracao]
    data_content = []

    for i in ((iteracao-1)*@number_classes_by_page)..((iteracao*@number_classes_by_page)-1)
      data_content << "#{(@discipline_class.class_records[i].blank? ? " " : I18n.l(@discipline_class.class_records[i].recorded_at, :format => "%d / %b"))}"
    end
    
    header_table = [["Nº","Matrícula","Nome"] + data_content]
    #Total de Faltas Desabilitado Abaixo deste comentario
    # if ((@repetitions+1) != iteracao)
      # header_table = [["Nº","Matrícula","Nome"] + data_content]
    # else
      # header_table = [["Nº","Matrícula","Nome"] + data_content + ["Total de Presenças","Total de Faltas","% de Faltas"]]
    # end 
    
    
    
    #Começo da Iteração dos Cruzamento de Dados entre Estudantes e Aulas para colocar Presença
    @discipline_class.class_records_sort_by_name.each_with_index do |student, j| #Começa a iteração para criar a tabela de presenças por alunos - Linha da tabela que contem Numero (posição) do Aluno na chamada, Matricula do Aluno, Nome do Aluno e sequencias de dias com Presença ou Falta
      classes_presences_hash = [] #Cria Array de Presença para as aulas
      
      for i in ((iteracao-1)*@number_classes_by_page)..((iteracao*@number_classes_by_page)-1)
        ispresent = nil
        if !@discipline_class.class_records[i].blank?
          if !@discipline_class.class_records[i].class_record_presences.any?
            classes_presences_hash << " "
          else
            @discipline_class.class_records[i].class_record_presences.each_with_index do |presence, k|
              if presence.model_student_id == student.student_id and presence.is_present == true
                 ispresent = "C"
                 break
              end
            end
            ispresent.nil? ? classes_presences_hash << "F" : classes_presences_hash << ispresent
          end
        else
          classes_presences_hash << " "
        end
      end
       if !student.registration.registration_status.is_attending.blank?
          header_table += [["#{j+1}","#{student.student_registration_number}","#{student.student_name}"] + classes_presences_hash]
       end
      
      #Total de Faltas Desabilitado Abaixo deste comentario
      # if ((@repetitions+1) != iteracao)
        # header_table += [["#{j+1}","#{student.student_registration_number}","#{student.student_name}"] + classes_presences_hash]
      # else
        # header_table += [["#{j+1}","#{student.student_registration_number}","#{student.student_name}"] + classes_presences_hash + ["#{student.is_present_count}","#{student.is_ausent_count}","#{student.is_ausent_percent}%"]]
      # end  
      
      
    end
    
    bounding_box([-10, 480], :width => 2200, :height => 425) do #Determina a posição que a tabela se encontra e o tamanho
      font_size 8
      data_type = [["Legenda para F e C: F - Falta e C - Comparecimento"]]
      #Desenha a Tabela
      table(header_table, :header => true) do |table, p|
        p = {:registration_class_count => @discipline_class.registration_classes.count, :number_classes_by_page => @number_classes_by_page, :rest => @rest, :iteracao => iteracao} # Array de variaveis para valores dos atributos
        
        table.column(0..(p[:number_classes_by_page]+2)).align = :center
        
        table.row(1..p[:registration_class_count]).padding = [1,1,1,1]
        table.column(2).row(1..p[:registration_class_count]).align = :left
        table.columns(1).width = 67
        table.columns(2).width = 125
        
        #Atributos Para Resultados Finais => "Total de Presenças","Total de Faltas","% de Faltas"
        # table.column((p[:number_classes_by_page]+3)).width = 60
        # table.column((p[:number_classes_by_page]+4)).width = 35
        # table.column((p[:number_classes_by_page]+5)).width = 35
        # table.column(3..(p[:number_classes_by_page]+5)).align = :center
        #Atributos para a parte das datas
        table.row(0).column(3..p[:number_classes_by_page]+2).width = 19
        table.row(0).column(3..p[:number_classes_by_page]+2).height = 40
        table.row(0).column(3..p[:number_classes_by_page]+2).rotate = 90
        table.row(0).column(3..p[:number_classes_by_page]+2).padding = [33,-15,-20,5]
      end
      table(data_type, :width => 775) do
        row(0).columns(0).width = 775
        row(0).align = :center
        row(0).borders = []
      end
    end
    if ((@repetitions+1) == iteracao)
      self.signatures_and_subtitles
    end
  end
  
  def signatures_and_subtitles
    bounding_box([0, 50], :width => 2200) do
      data_footer = [["Visto do Coordenador: ____________________________________ ","Assinatura do Professor: ____________________________________ "]]
      table(data_footer, :width => 775) do
        row(0).columns(0..1).width = 387.5
        row(0).borders = [] 
      end
    end
  end
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB - #{@discipline_class.discipline_year.blank? ? " " : "#{@discipline_class.discipline_year.strftime('%Y')}.#{@discipline_class.school_class_period}"}", :at => [345, -10], :style => :bold
      draw_text "Página #{i+1} de #{page_count}", :at => [700, -10]
    end
  end
  
end