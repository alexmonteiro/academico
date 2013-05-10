class EnrollmentPDF < Prawn::Document
def initialize(params)
    super(:top_margin => 20, :page_layout => :landscape, :page_size => "A4")
    #super()
    @discipline = params[:discipline_class]
    @preenchido = params[:preenchido]
    #header
    title
    content
    foot
  end
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB", :at => [350, -10], :style => :bold
    end
  end
  def footer
    string = "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'} ACADEMICO - IFB Página <page> de <total>" # Green page numbers 1 to 7
    options = {:at => [bounds.right - 550, 0], :start_count_at => 1} 
    number_pages string, options
  end 
  
  def title
    image "app/assets/images/logo-if.png", :at => [0,550], :width => 25, :height => 40
    text "Instituto Federal de Brasília", :align => :center, :size => 8, :style => :bold
    text "FICHA DE MATRÍCULA", :align => :center, :size => 12, :style => :bold
  end
  
  def content
    font_size 8
    text_box "DADOS DO CURSO:", :style => :bold, :at => [0,500]
    move_down(29)
    stroke_horizontal_rule
    
    data_student_1 = [ ["<b>Nome Completo:</b>",""] ]
    data_student_2 = [ ["<b>Sexo:</b>","","<b>Nacionalidade:</b>","","<b>Data de Nascimento:</b>","#{Time.now.strftime("%d/%m/%Y")}","<b>Número de Identificação</b>:","","<b>Naturalidade/UF:</b>",""]]
    data_student_3 = [ ["<b>CPF:</b>","","<b>Data de Expedição:</b>","#{Time.now.strftime("%d/%m/%Y")}"]]
    data_student_4 = [ ["<b>Nome do Pai:</b>",""],
                       ["<b>Nome da Mãe:</b>",""] ]
    data_student_5 = [ ["<b>Endereço Residencial:</b>","","<b>CEP:</b>","","<b>Celular:</b>",""]]
    data_student_6 = [ ["<b>Localização/Zona da residência:</b>","","<b>Quantidade de filhos:</b>","","<b>Telefone(s):</b>",""] ]
    data_student_7 = [ ["<b>Renda Familiar:</b>","","<b>Quantas pessoas moram com voçê?:</b>","","<b>E-mail:</b>",""]]
    data_student_8 = [ ["<b>Trabalha?:</b>","","<b>Profissão/Cargo:</b>","","<b>Local de Trabalho:</b>","","<b>Telefone(s) do Trabalho:</b>",""]]
    data_student_9 = [ ["<b>Como voçê se declara quanto à etnia:</b>","","<b>Estado Civil:</b>",""]]


    stroke_horizontal_rule
    move_down(30)
    text_box "Curso: #{@discipline.school_class.model_course_matrix}", :style => :bold, :at => [0,483]
    text_box "DADOS DO ALUNO(A):", :style => :bold, :at => [0,468]
    text_box "TURNO:", :style => :bold, :at => [300,483]
    text_box "CAMPUS:", :style => :bold, :at => [400,483]
    text_box "Matrícula:", :style => :bold, :at => [600,483]
    stroke_horizontal_rule
    #Nome Completo
    table(data_student_1, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 650
    end 
    #como voce se declara.... nacionalidade
    move_up(5)
    table(data_student_9, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 150
      column(3).width = 200
    end
    #sexo,naturalidade,data de nascimento,numero de identificao,nacionalidade
     table(data_student_2, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 30
      column(3).width = 100
      column(5).width = 50
      column(7).width = 70
      column(9).width = 70
    end 
    #cpf,estado civil, data de expedicao, data de nascimento
    table(data_student_3, :cell_style => { :inline_format => true, :borders => [] }) do 
      column(1).width = 110
      column(3).width = 150
    end 
    table(data_student_4, :cell_style => { :inline_format => true, :borders => [] }) do
       columns(1).width = 650
    end
    table(data_student_5, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 350
      column(3).width = 150
      column(5).width = 100
    end 
    table(data_student_6, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 300
      column(3).width = 50
      column(5).width = 100
    end
    table(data_student_7, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 150
      column(3).width = 50
      column(5).width = 200
    end
    table(data_student_8, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 50
      column(3).width = 150
      column(5).width = 150
      column(7).width = 100
    end
    stroke_horizontal_rule
    #pad (5) { table(data_student, :cell_style => { :inline_format => true }) do
      #rows(0..7).borders = []
    #end } 

    #data_content = [[""]]    
    #data_type = [[""]]        
  end 
end