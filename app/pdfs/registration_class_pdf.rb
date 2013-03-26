class RegistrationClassPdf < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :landscape, :page_size => "A4")
    #super()
    @discipline = params[:discipline_class]
    @preenchido = params[:preenchido]
    @discipline.class_records.reverse!
    #header
    
      #variaveis de Controle
      qtd_aulas = @discipline.class_records.count
      repeticoes = qtd_aulas.div 20
      paginacao_inicio = 0
      paginacao_fim = 0
      #Fim Variáveis de Controle
      
      #Cabecalho
      repeat(:all) do
      title
      information
      #head_table
      end
      #Fim Cabecalho
      
      #Iteraca do Cruzamento de dados entre estudantes e presenca em aulas
      for i in 1..repeticoes+1
        content(:iteracao => i-1)
        paginacao_fim = page_count
        repeat((paginacao_inicio.to_i + 1)..paginacao_fim.to_i) do
          head_table(:iteracao => i-1)
        end
        paginacao_inicio = page_count
        if i < repeticoes-1 || ((page_count.to_i.remainder 2) != 0)
          if repeticoes != 0
            start_new_page
          end
        end
      end
      #Fim da Iteracao
       
      #Rodape
      foot
      #Fim do Rodape
  end
  
  #Metodo Que Desenha As Informações Sobre a Logo, Titulo Instituto, Diário, Relatório de Frequencia... 
  def title
    image "app/assets/images/logo-if.png", :at => [0,550], :width => 55, :height => 70
    text "Instituto Federal de Brasília", :align => :center, :size => 18
    text "Diário de Classe - Relatório de Frequência", :align => :center, :size => 12
    text "#{@discipline.discipline_year.blank? ? " " : "#{@discipline.discipline_year.strftime('%Y')}.#{@discipline.school_class_period}"}", :align => :center, :size => 14
    move_down(15)
  end
  
  #Método que desenha as informações sobre o relatório como Classe, Curso, Professor...
  def information
    font_size 9.5
    data_header = [["<b>Classe:</b> #{@discipline.school_class.model_custom_tiny_name}", "<b>Unidade Organizacional:</b> #{@discipline.discipline_class_dept}"],
                      ["<b>Curso:</b> #{@discipline.school_class.model_course_matrix}", "<b>Elemento Curricular:</b> #{@discipline.discipline_name}"],
                      ["<b>Professor:</b> #{@discipline.discipline_teaches}", "<b>Aulas Ministradas/Previstas:</b> #{@discipline.discipline_class_classes_taught_planned}"],
                      ["<b>Carga Horária:</b> #{@discipline.discipline_class_workload}", ""]]
    table(data_header, :width => 775, :cell_style => { :inline_format => true }) do
      row(0..3).borders = []
      row(0..3).columns(0..1).width = 387.5
      row(0..3).padding = [2,2,2,2]   
  end
  
  #Metodo que desenha o head da tabela Numero, Matriculas, Alunos...
  def head_table(opcoes = {})
    font_size 9
    #Config do campo Datas e a Linha horizontal
    bounding_box([0, 400], :width => 2200, :font_style => :bold) do
      vertical_line 0, -40, :at => 225
      #horizontal_line 240, 640, :at => -31
      rotate(90, :origin => [00, 00]) do
        draw_text "Datas", :at => [-32,-235], :font_style => :bold
      end
    #fim Config
    
    #Tabela de Cabecalho
    
    #Controle das datas das aulas
    qtd_aulas = @discipline.class_records.count
    repeticoes = qtd_aulas.div 20
    ite = opcoes[:iteracao]
    
    #Iteracoes para o controle das datas de aulas
    
      dates_classes = [] 
      for i in (ite*20)..(20*(ite+1))-1
        !@discipline.class_records[i].blank? ? dates_classes << I18n.l(@discipline.class_records[i].recorded_at, :format => "%d/%b") : dates_classes << " "
      end
    #Fim da Iteraca
    #Fim do controle das datas de aulas
    
    # Definição e Desenho da Tabela Cabecalho
    data_head = [["Nº","Matrícula","Aluno"] + dates_classes + ["Total de Presenças","Total de Faltas","% de Faltas"]]
      
      table(data_head, :header => true) do
        row(0).height = (40)
        row(0).align = :center
        row(0).font_style = :bold
        row(0).columns(0).padding = [15,0,0,0]
        row(0).columns(1).padding = [15,0,0,0]
        row(0).columns(2).padding = [15,0,0,0]
        row(0).columns(23).padding = [10,0,0,0]
        row(0).columns(24).padding = [10,0,0,0]
        row(0).columns(25).padding = [10,0,0,0]
        columns(3..34).width = 17
        columns(0).width = 25
        columns(1).width = 90
        columns(2).width = 125
        columns(23).width = 60
        columns(24).width = 35
        columns(25).width = 35
        
        row(0).column(3..22).rotate = 90
        row(0).column(3..22).padding = [40,-35,-50,5]
      end
      
      
    end
  end
  
  
  #Conteudo da Tabla  - Informações
  def content(opcoes={})
    
    bounding_box([0, 360], :width => 2200) do
    font_size 9

    data_type = [["Legenda para F e C: F - Falta e C - Comparecimento"]]
    
    data_footer = [["Visto do Coordenador: ____________________________________ ","Assinatura do Professor: ____________________________________ "]]
    
    move_down(5)
    self.data_calls(:iteracao => opcoes[:iteracao])
    
    table(data_type, :width => 775) do
      row(0).columns(0).width = 775
      row(0).align = :center
      row(0).borders = []
    end
    table(data_footer, :width => 775) do
      row(0).columns(0..1).width = 387.5
      row(0).borders = [] 
    end
    end
   end
  end
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB", :at => [350, -10], :style => :bold
      draw_text "Página #{i+1} de #{page_count}", :at => [700, -10]
      
    end
    
  end 
  
  
  
  #Métodos Para Iteracoes e insercoes de informacoes e cruzemntos de dados
  
  #Método para listar alunos e presenças (Cruzmento de Dados)
  def data_calls(opcoes = {})
    data_content = [[" "," "," "] + [" "]*20 + [" "," "," "]]
     if @preenchido.blank?
      @discipline.registration_classes.each_with_index do |student, i|
        data_content += [["#{i + 1}","#{student.student_registration_number}","#{student.student_name}"] + [" "]*20 + [" "," "," "]]
      end
    else
      quantidade_aulas = @discipline.records_planned_count
      espacamentos = quantidade_aulas.modulo 20
      repeticoes = quantidade_aulas.div 20 + 1
        
         ite = opcoes[:iteracao]
         @discipline.class_records_sort_by_name.each_with_index do |student, j|
          presencas = []
          for i in (ite*20)..(20*(ite+1))-1
            presenca = nil
            if !@discipline.class_records[i].blank?
              if !@discipline.class_records[i].class_record_presences.any?
                presencas << " "
              else
                @discipline.class_records[i].class_record_presences.each_with_index do |chamada, k| 
                  if chamada.model_student_id == student.student_id and chamada.is_present == true
                    presenca = "C"
                    break
                  end
                end
                presenca.nil? ? presencas << "F" : presencas << presenca
              end
            else
              presencas << " " 
            end
         end
         
          data_content += [["#{j + 1}","#{student.student_registration_number}","#{student.student_name}"] + presencas + ["#{student.is_present_count}","#{student.is_ausent_count}","#{student.is_ausent_percent}%"]]
          repeticoes = repeticoes - 1
        end 
      
    end
    table(data_content, :header => true) do
      row(0).borders = []
      row(0).height = 10
      columns(0).width = 25
      columns(1).width = 90
      columns(2).width = 125
      # columns(2).width = 100
      
      # columns(3..34).padding = 3.5
      columns(3..22).width = 17
      columns(23).width = 60
      columns(24).width = 35
      columns(25).width = 35
      
      columns(0..1).align = :center
      columns(3..25).align = :center
    end
  end
  
end