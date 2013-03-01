class SchoolClassAusentResultPDF < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :landscape, :page_size => "A4")
    #super()
    @school_class = params[:school_class]
    @preenchido = params[:preenchido]
    #header
    content
    foot
  end
  
  def content
    bounding_box([10, 450], :width => 80) do
      image "app/assets/images/IFB_Logo_pro_prawn.jpg", :at => [0,100], :width => 80, :height => 40
    end
    bounding_box([91, 450], :width => 80) do
      draw_text "Curso: #{@school_class.model_course_matrix}", :at => [0,100]
    end
  
    
    bounding_box([10,475], :width => 700, :height => 475) do
      table_info_content = []
      tabela_disciplinas = [["Disciplinas"]]
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
    font_size 8 do
    
    #Construção da Tabela de Dados Alunos X Disciplinas
    tabela = [["Nº","MATRÍCULA","NOME DO(A) ALUNO(A)"]]
    # disciplinas = []
    # @school_class.discipline_classes_from_scholl_class do |disciplina|
      # disciplina << disciplina
    # end
    # tabela = << 
    @school_class.list_students_by_school_class.each_with_index do |student, i|
      tabela << ["#{i+1}","#{student.student_registration_number}","#{student.student_name.upcase}"]
    end
    table(tabela, :cell_style => {:align => :center}) do 
      
      columns(0..30).padding = [1,2,1,2]
      #Config da Coluna 0 ("Nº")
      columns(0).width = 25
      columns(0).font_style = :bold
      columns(0).size = 6
      
      columns(2).align = :left
      
      rows(0).align = :center
      rows(0).font_style = :bold
    end
   end 
    
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
end