class SchoolClassAusentResultPDF < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :landscape, :page_size => "A4")
    #super()
    @school_class = params[:school_class]
    @preenchido = params[:preenchido]
    
    #Variaveis de controle
    @limite_disciplina = 8 # => quantidade de colunas de disciplinas por pagina
    qtd_disciplinas = @school_class.discipline_classes_from_scholl_class.count # => Saber Quantidade Total das Disciplinas
    @repeticoes = qtd_disciplinas.div @limite_disciplina # Quantidade de vezes q ira se repetir
    @sobra = qtd_disciplinas.modulo @limite_disciplina
    #Fim Variaveis de Controle
    
    #Cabecalho
    repeat(:all) do
      image_logo
      table_info 
      captions
      #debug
    end
    #Fim Cabecalho
    
    #Iteração do Cruzamento de dados entre estudantes e ausencia nas disciplinas
     # => Verifica qtd de repeticoes para inserir no laço seguinte[sendo @repeticoes = 0]
    for i in 0..@repeticoes
      content(:iteracao => i, :repeticao => @repeticoes)
      if @quebra_relatorio == true 
        break
      end
      if @repeticoes > i
        start_new_page
      end
    end
    #Fim da Iteracao
    
    #Rodapé
    foot
    #
  end
  
  def debug
    draw_text "Qtd_Disciplina = #{@school_class.discipline_classes_from_scholl_class.count} - Qtd_Repeticoes = #{@repeticoes}", :at => [400,550]
  end
  
  def image_logo
     bounding_box([-3, 650], :width => 100, :height => 100) do
      image "app/assets/images/Logo_IFB_Vertical.jpg", :at => [0,0], :width => 65, :height => 90

      # tabela_imagem = [[ {:image => "app/assets/images/IFB_Logo_pro_prawn.jpg", :image_width => 75, :image_height => 45}]]
      # table(tabela_imagem) do
        # rows(0).borders = []
      # end
    end
  end
  
  def captions
    #Legendas
    bounding_box([375, 550], :width => 2200, :height => 100) do
      font("Helvetica", :size => 8, :style => :bold) do
        legendas = [["<b>TF</b> = Total de Faltas","<b>TN</b> = Total de Nota","<b>AA</b> = Aprovado/Apto","<b>AC</b> = Aprovado no Conselho"],
                    [{:content => "<b>AAC</b> = Aprovado por Aproveitamento de Crédito", :colspan => 2},"<b>RN</b> = Reprovado por Nota","<b>RF</b> = Reprovado por Faltas",""],
                    ["<b>EC</b> = Em Curso","<b>C</b> = Cancelado","<b>D</b> = Dispensado",""]]
        table(legendas, :cell_style => {:borders => [], :size => 8, :align => :left, :inline_format => true})
      end
    end
  end
  
  def table_info
    #Tabulação de Faltas      
    font("Helvetica", :size => 13, :style => :bold) do
      draw_text "Tabulação de Faltas & Notas", :at => [350,480]
    end
    
    #Modalidade 
    font("Helvetica", :size => 10, :style => :bold) do
      draw_text "Modalidade: #{@school_class.school_course_modality.description}", :at => [75,533]
    end
    
    #Curso
    font("Helvetica", :size => 10, :style => :bold) do
      draw_text "Curso: #{@school_class.model_course_matrix}", :at => [75,507]
    end
    
    #Curso
    font("Helvetica", :size => 10, :style => :bold) do
      draw_text "Campus: #{@school_class.school_course_dept.name}", :at => [75,481]
    end
  end
  
  def content(iteracao =[])
    bounding_box([10,475], :width => 2200, :height => 475) do
      datas_generate( iteracao )
    end 
  end
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB", :at => [350, -10], :style => :bold
      draw_text "Página #{i+1} de #{page_count}", :at => [700, -10]
    end
  end
  
  
  
  
  
  #Metodos para geração de Dados
  def datas_generate(variaveis = {})
    
    font_size 8 do
      tabela_total_faltas_por_aluno = []
      table_info_content = []
      tabela_disciplinas = [["Disciplinas"]]
      
      #Construção da Tabela de Dados Alunos X Disciplinas
      discipline_list = []
      discipline_total_classes = []
      
      #Verifica se está na ultima iteracao para saber se @limite_disciplina tera a coluna Total de Fatas
      #variaveis[:repeticao] != variaveis[:iteracao] ? @limite_disciplina = 7 : @limite_disciplina = 6
      
      ite = variaveis[:iteracao]
      for j in (ite*@limite_disciplina)..(@limite_disciplina*(ite+1))-1 do
        #@school_class.discipline_classes_from_scholl_class[j].blank? ? discipline_list << {:content => " ", :colspan => 2} : discipline_list << {:content => "#{@school_class.discipline_classes_from_scholl_class[j].discipline_name}", :colspan => 2}
        #@school_class.discipline_classes_from_scholl_class[j].blank? ? discipline_total_classes << {:content => " ", :colspan => 2} : discipline_total_classes << {:content => "#{@school_class.discipline_classes_from_scholl_class[j].records_planned}", :colspan => 2}
        @school_class.discipline_classes_from_scholl_class[j].blank? ? discipline_list << {:content => " ", :colspan => 2} : discipline_list << {:content => "#{@school_class.discipline_classes_from_scholl_class[j].discipline_name}", :colspan => 2}
        discipline_total_classes += ["TF","TN"]       
      end
      if variaveis[:repeticao] == variaveis[:iteracao] || @sobra == 0
        tabela = [["","",""]+discipline_list+[{:content => "Resultado Final", :colspan => 2}]]
        #tabela += [["Nº","MATRÍCULA","NOME DO(A) ALUNO(A)"] + discipline_total_classes + [{:content => "#{@school_class.total_ausents_discipline}", :colspan => 2}]]
        tabela += [["Nº","MATRÍCULA","NOME DO(A) ALUNO(A)"] + discipline_total_classes + ["TF","TN"]]
      else
        tabela = [["","",""]+discipline_list]
        tabela += [["Nº","MATRÍCULA","NOME DO(A) ALUNO(A)"] + discipline_total_classes]
      end
      
      
      #Cruzamento de Dados
      @school_class.list_students_by_school_class.each_with_index do |student, i|
        ausents = []
        notes = []
        datas = []
        for j in (ite*@limite_disciplina)..(@limite_disciplina*(ite+1))-1 do
          ausent = nil
          note = nil
          if !@school_class.discipline_classes_from_scholl_class[j].blank?
            @school_class.discipline_classes_from_scholl_class[j].students_id_from_discipline.each_with_index do |aluno, k| 
              if aluno.student_id == student.student_id
              #ausent = "#{aluno.is_ausent_count}"
              ausent = "#{aluno.is_ausent_count}"
              #note = "#{aluno.is_ausent_count}"
              note = "#{aluno.model_student_result_average}"
              break
              end
            end
          else
            ausent = " "
            note = " "
          end
          ausent.nil? ? ausent = "-" : ausent = "#{ausent}"
          note.nil? ? note = "-" : notes = "#{note}"
          datas += ["#{ausent}","#{note}"]          
        end
        if variaveis[:repeticao] == variaveis[:iteracao] || @sobra == 0
          tabela += [["#{i+1}","#{student.student_registration_number}","#{student.student_name.split(" ").each{|word| word.capitalize!}.join(" ")}"] + datas + ["#{@school_class.total_students_ausent(student)}","#{student.acronym_status_rules}"]]
          @quebra_relatorio = true # Interrompe a geracao do relatorio
        else
          tabela += [["#{i+1}","#{student.student_registration_number}","#{student.student_name.split(" ").each{|word| word.capitalize!}.join(" ")}"] + datas ]
        end
      end
    
    
      table(tabela, :cell_style => {:align => :center, :valign => :middle}, :header => true) do
    
        columns(0..30).padding = [1,2,1,2]
        rows(0).borders = []
        columns(3..21).borders = [:top, :left, :bottom, :right]
        columns(3..21).width = 30
        #Config da Coluna 0 ("Nº")
        columns(0).width = 25
        columns(0).font_style = :bold
        columns(0).size = 6
        #Fim
        #Config da Coluna 1 ("Nº")
        columns(1).width = 60
        columns(1).size = 6
        #Fim
        #Config da Coluna 2 ("Nº")
        columns(2).size = 7
        columns(2).width = 125
        #Fim
        rows(0).height = 30
        rows(0).size = 6
        rows(0).columns(0..2).borders = []
        
      
        
        columns(2).rows(0).align = :left
        columns(2).rows(2..200).align = :left
      
        
        rows(0).font_style = :bold
      end
    end
  end

end

    # @school_class.discipline_classes_from_scholl_class.each do |disciplina|
        # disciplina.students_id_from_discipline.each do |aluno|
          # tabela_disciplinas << ["#{disciplina.matrix_discipline.try(:discipline_name)}","#{aluno.student_id}"]
        # end
    # end
#     
    # move_down(20)
    # tabela_alunos = [[" "," ","Alunos","Qtd de Faltas"]]
    # @school_class.list_students_by_school_class.each do |aluno|
      # tabela_alunos << ["#{aluno.discipline_name}","#{aluno.student_id}","#{aluno.student_name}","#{aluno.is_ausent_count}"]
    # end
    # #tabela_alunos.uniq!
#     
    # #tabelas
    # # tabela_alunos
    # # tabela_disciplinas
#     
    # table(tabela_disciplinas)
    # table(tabela_alunos) do
      # columns(0..1).rows(0).borders = []
    # end
#     
    # colunas_disciplinas = []
    # for i in 0..10 do
      # !@school_class.discipline_classes_from_scholl_class[i].blank? ? colunas_disciplinas << @school_class.discipline_classes_from_scholl_class[i].discipline_name : colunas_disciplinas << " "
    # end
    # tabela_cabecalho = [["Cruso: <<Nome do Curso>>"] + colunas_disciplinas + ["Total de Faltas"]]
      # table(tabela_cabecalho)
    # end
    
    # @school_class.discipline_classes_from_scholl_class.each do |discipline|
      # discipline_list << discipline.discipline_name
      # discipline_total_classes << discipline.records_planned
    # end
    
    # @school_class.list_students_by_school_class.each_with_index do |student, i|
      # ausents = []
      # for j in 0..7 do
        # @school_class.discipline_classes_from_scholl_class[0].students_id_from_discipline.each_with_index do |student_in_discipline, k|
          # if student.student_id == student_in_discipline.student_id
            # ausents << student_in_discipline.is_ausent_count
          # elsif student_in_discipline.blank?
            # ausents << "  "
          # else
            # ausents << " - "
          # end
        # end  
#         
      # end
      # tabela += [["#{i+1}","#{student.student_registration_number}","#{student.student_name.upcase}"] + ausents]
#       
  #  end
