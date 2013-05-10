class EnrollmentPDF < Prawn::Document
def initialize(params)
    super(:top_margin => 20, :page_layout => :portrait, :page_size => "A4")
    #super()
    @registration = params[:registration]
    #header
    title
    content
    foot
  end
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB", :at => [240, -10], :style => :bold
    end
  end
  def footer
    string = "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'} ACADEMICO - IFB Página <page> de <total>" # Green page numbers 1 to 7
    options = {:at => [bounds.right - 50, 0], :start_count_at => 1} 
    number_pages string, options
  end 
  
  def title
    image "app/assets/images/logo-if.png", :at => [0,800], :width => 25, :height => 40
    text "Instituto Federal de Brasília", :align => :center, :size => 8, :style => :bold
    text "FICHA DE MATRÍCULA", :align => :center, :size => 12, :style => :bold
  end
  
  def content
    font_size 7
    move_down(8)
    text "DADOS DO CURSO", :style => :bold
    stroke_horizontal_rule
    
    #tratamento de valores booleanos
    #para isemployee
    employee = []
    telephone = []
    if !@registration.person.isemployee.blank?
       employee = "SIM"
    else
      employee = "NÃO"
    end
    #par pegar todos os telefones
    @registration.person.people_telephones.each do |tel|
      telephone = tel.number
    end
    
    #dados do aluno
    data_student_1 = [ ["<b>Nome Completo:</b>","#{@registration.person.try(:name)}"] ]
    data_student_2 = [ ["<b>Sexo:</b>","#{@registration.person.gender.acronym}","<b>Nacionalidade:</b>","#{@registration.person.country.name}","<b>Número de Identidade</b>:","#{@registration.person.person_identification_doc.try(:model_rg_custom)}"]]
    data_student_3 = [ ["<b>CPF:</b>","#{@registration.person.try(:cpf)}","<b>Data de Expedição:</b>","#{Time.now.strftime("%d/%m/%Y")}","<b>Orgão Emissor:</b>",""]]
    data_student_4 = [ ["<b>Nome do Pai:</b>","#{@registration.person.father_name}"],
                       ["<b>Nome da Mãe:</b>","#{@registration.person.mom_name}"] ]
    data_student_5 = [ ["<b>Endereço Residencial:</b>","#{@registration.person.person_address.street_name}","<b>Celular:</b>",""]]
    data_student_6 = [ ["<b>Localização/Zona da residência:</b>","#{@registration.person.person_address.provenance_area.description}","<b>Quantidade de filhos:</b>","#{@registration.person.number_children}","<b>Telefone(s):</b>","#{telephone}","<b>CEP:</b>","#{@registration.person.person_address.zip_code}"] ]
    data_student_7 = [ ["<b>Renda Familiar:</b>","","<b>Quantas pessoas moram com voçê?</b>","","<b>E-mail:</b>","#{@registration.person.email}"]]
    data_student_8 = [ ["<b>Trabalha?</b>","#{employee}","<b>Profissão/Cargo:</b>","","<b>Telefone(s) do Trabalho:</b>",""]]
    data_student_9 = [ ["<b>Como voçê se declara quanto à etnia:</b>","#{@registration.person.race.race}","<b>Estado Civil:</b>","#{@registration.person.marital_status.status}"]]
    data_student_10 = [ ["<b>Naturalidade/UF:</b>","#{@registration.person.try(:city).try(:name)} / #{@registration.person.try(:city).try(:state).try(:acronym)}","<b>Data de Nascimento:</b>","#{@registration.person.birth_date.strftime("%d/%m/%Y")}"]]
    data_student_11 = [ ["<b>Cidade:<b>","#{@registration.person.city.name}","<b>Local de Trabalho:</b>",""]]
    #dados do responsavel
    data_responsible_1 = [ ["<b>Nome Completo:<b>","",] ]
    data_responsible_2 = [ ["<b>CPF:</b>","","<b>Escolaridade:</b>",""]]
    data_responsible_3 = [ ["<b>Endereço Residencial:</b>","","<b>CEP:</b>","","<b>Telefone:</b>",""]]
    data_responsible_4 = [ ["<b>Trabalha?</b>","","<b>Local de Trabalho:</b>","","<b>Telefone do Trabalho:</b>",""]]
    data_responsible_5 = [ ["<b>Parentesco:</b>","","<b>Profissão/Cargo:</b>",""]]
    #informacoes sobre o aluno
    data_health_student_1 = [ ["<b>Apresenta necessidade específica?</b>","","<b>Qual?</b>",""] ]
    data_health_student_2 = [ ["<b>Problema de Saúde/Alergia?</b>","","<b>Qual?</b>",""] ]
    #escolaridade do aluno
    data_schooling_student_1 = [ ["<b>Instituição de Origem:</b>","","<b>Procedência Escolar:</b>",""] ]
    data_schooling_student_2 = [ ["<b>Etapa de Ensino:</b>","#{@registration.person.education_degree.degree}","<b>Ano de Conclusão:</b>","#{Time.now.strftime("%Y")}"] ]
    
    stroke_horizontal_rule
    move_down(5)
    text "Curso: #{@registration.course_matrix.course.name}", :style => :bold
    text "Turno:", :style => :bold
    text "Capus: #{@registration.course_matrix.course.dept.try(:name)}", :style => :bold
    text "Matrícula: #{@registration.registration_number}", :style => :bold
    text "DADOS DO ALUNO(A)", :style => :bold
    stroke_horizontal_rule
    #Nome Completo
    table(data_student_1, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 450
    end 
    #como voce se declara.... nacionalidade
    table(data_student_9, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 200
      column(3).width = 100
    end
    #sexo,numero de identificao,nacionalidade
    table(data_student_2, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 30
      column(3).width = 170
      column(5).width = 130
    end 
    #naturalidade, data de nascimento
    table(data_student_10, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 250
      column(3).width = 100
    end
    #cpf,estado civil, data de expedicao,orgao emissor
    table(data_student_3, :cell_style => { :inline_format => true, :borders => [] }) do 
      column(1).width = 90
      column(3).width = 50
      column(5).width = 100
      column(7).width = 60
    end 
    #nome do pai e da mae
    table(data_student_4, :cell_style => { :inline_format => true, :borders => [] }) do
       columns(1).width = 450
    end
    #endereco reisdencial, celular
    table(data_student_5, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 285
      column(3).width = 100
    end 
    #localizacao/zona,quantidades de filhos,telefone, cep
    table(data_student_6, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 70
      column(3).width = 25
      column(5).width = 80
      column(7).width = 60
    end
    #tenda familiar, quants pessoas moram com vc, e-mail
    table(data_student_7, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 150
      column(3).width = 25
      column(5).width = 100
    end
    #cidade,local de trabalho
    table(data_student_11, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 190
      column(3).width = 150
    end
    #trabalha?, porfissao, local de trabalho, telefone do trabalho
    table(data_student_8, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 25
      column(3).width = 190
      column(5).width = 100
    end
    move_down(20)
    text "DADOS DO RESPONSAVEL(INDICAR PESSOA PARA CONTATO DE EMERGÊNCIA)", :style => :bold
    stroke_horizontal_rule
    #nome completo
    table(data_responsible_1, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 450
    end
    #cpf,escolaridade
    table(data_responsible_2, :cell_style => { :inline_format => true, :borders => [] }) do
     column(1).width = 90
     column(3).width = 340
    end
    #endereco residencial,cep,telefone
    table(data_responsible_3, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 210 
      column(3).width = 65
      column(5).width = 80
    end
    #trabalha?local de trabalho,telefone do trbalho
    table(data_responsible_4, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 25
      column(3).width = 210
      column(5).width = 80
    end
    #parentesco,profissao cargo
    table(data_responsible_5, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 150
      column(3).width = 240
    end
    move_down(20)
    text "INFORMAÇÕES SOBRE A SAÚDE DO ALUNO", :style => :bold
    stroke_horizontal_rule
    #apresenta necessidade especifica,qual
    table(data_health_student_1, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 25
      column(3).width = 330
    end
    #problema de saude,qual
    table(data_health_student_2, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 25
      column(3).width = 355
    end
    move_down(20)
    text "ESCOLARIDADE DO ALUNO", :style => :bold
    stroke_horizontal_rule
    #instituicao de origem, procedencia escolar
    table(data_schooling_student_1, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 240
      column(3).width = 100
    end
    #etapa de ensino, ano de conclusao
    table(data_schooling_student_2, :cell_style => { :inline_format => true, :borders => [] }) do
      column(1).width = 150
      column(3).width = 100
    end

    #data_content = [[""]]    
    #data_type = [[""]]        
  end 
end