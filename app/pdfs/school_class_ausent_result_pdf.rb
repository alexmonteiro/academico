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
    tabela_disciplina = [["Disciplinas"]]
    @school_class.discipline_classes_from_scholl_class.each do |disciplina|
      tabela_disciplina << ["#{disciplina.matrix_discipline.try(:discipline_name)}"]
    end
    table(tabela_disciplina)
    move_down(20)
    tabela_alunos = [["Alunos"]]
    @school_class.list_students_by_school_class.each do |aluno|
      tabela_alunos << ["#{aluno.student_name}"]
    end
    tabela_alunos.uniq!
    table(tabela_alunos)
    
    colunas_disciplinas = []
    for i in 0..10 do
      !@school_class.discipline_classes_from_scholl_class[i].blank? ? colunas_disciplinas << @school_class.discipline_classes_from_scholl_class[i].discipline_name : colunas_disciplinas << " "
    end
    
    tabela_cabecalho = [["Cruso: <<Nome do Curso>>"] + colunas_disciplinas + ["Total de Faltas"]]
  
    table(tabela_cabecalho)
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