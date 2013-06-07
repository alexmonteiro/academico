class AcademicRecordPDF < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :portrait, :page_size => "A4")
    @registration = params[:registration]
    @count = 1
    logo
    title
    content
    foot
  end
  
  def logo
     image "app/assets/images/2237_ifbhorizontal.jpg", :at => [0,800], :width => 120, :height => 40
  end
  
  def title
    text_box "Ministério da Educação", :size => 13, :at => [150,790], :align => :center
    text_box "Instituto Federal de Educação, Ciência e Tecnologia de Brasília", :size => 11, :at => [150,775], :align => :center
    text_box "#{@registration.course_matrix.course.dept.try(:name)}", :style => :italic, :size => 9, :at => [150,762], :align => :center
    text_box "Criado pela Lei Nº 11.892, de 29/12/2008, DOU Nº 253, 30/12/2008, Seção 1", :at => [150,750], :align => :center, :size => 7
    text_box "Nome do Estabelecimento de Ensino", :at => [2,735], :size => 8
    text_box "Endereço/Telefone:", :at => [2,704], :size => 8
    text_box "Nome do Curso:", :at => [2,648], :size => 8
    text_box "Área do Curso:", :at => [322,648], :size => 8
    text_box "Nº Matrícula:", :at => [2,628], :size => 8
    text_box "Nome do Aluno:", :at => [124,628], :size => 8
    text_box "Sexo: ", :at => [394,628], :size => 8
    text_box "Data Nasc.", :at => [434,628], :size => 8
    text_box "Nacionalidade:", :at => [2,608], :size => 8
    text_box "Naturalidade/UF:", :at => [156,608], :size => 8
    text_box "Cart. Identidade/Órgão Expeditor/UF:", :at => [352,608], :size => 8
  end
  
  def content
    
    data_institution = [ ["#{@registration.person.try(:name)}"],
                         [""]]
    move_down(50)
    table(data_institution) do
      row(0).width = 523
      column(0).height = 30
    end
    stroke_horizontal_rule
    move_down(5)
    text "HISTÓRICO ESCOLAR DE EDUCAÇÃO PROFISSIONAL", :size => 14, :align => :center, :style => :bold
    stroke_horizontal_rule
    move_down(5)
    
    #usa tags html em cada tabela 
    # ex = [ ["<font-size = 6> Nome do Curso</ft></br>
    #        <font-size = 8> #{@var}<f><br>"]] 
    
    # data_table = [ [""],
                   # ["",""]]
                  
    # table(data_table, :cell_style => { :inline_format => true, :size => 6 }) do
      # rows(0).column(0).width = 300
    # end
    

    data_line_1 = [ ["#{@registration.course_matrix.course.name}",""]]
    data_line_2 = [ ["#{@registration.registration_number}","#{@registration.person.try(:name)}","#{@registration.person.gender.try(:acronym)}","#{I18n.l(@registration.person.try(:birth_date))}"]]
    data_line_3 = [ ["#{@registration.person.try(:city).try(:state).try(:country).try(:name)}","#{@registration.person.try(:city).try(:name).to_s} / #{@registration.person.try(:city).try(:state).try(:acronym)}","#{@registration.person.person_identification_doc.try(:model_rg_custom)}"]]
    
    #nome do curso,area do curso
    table(data_line_1, :cell_style => { :size => 8 }) do
      row(0).height = 20
      column(0).width = 320
      column(1).width = 203
    end
    #n matricula,nome do aluno,sexo,data nascimento
    table(data_line_2, :cell_style => { :size => 8}) do
      row(0).height = 20
      column(0).width = 123
      column(1).width = 270
      column(2).width = 40
      column(3).width = 90
    end
    #nacionalidade, naturalidade/UF,cart. identidade/orgao expeditor/UF
    table(data_line_3, :cell_style => { :size => 8}) do
      row(0).height = 20
      column(0).width = 155
      column(1).width = 195
      column(2).width = 173
    end

    move_down(10)
    
    #contador
    for i in 0..3
    
    table_components = [ ["Componentes Curriculares  Módulo #{@count}","Resultado Final","Horas Aula","Faltas"],
                         ["","","",""],
                         ["","","",""],
                         ["","","",""],
                         ["","","",""],
                         ["","","",""],
                         ["","","",""],
                         ["","","",""],
                         ["<b>Sub-total</b>","","",""]]
                         
    #componentes modulo 1
      move_down(20)
      table(table_components, :cell_style => { :inline_format => true, :size => 8}) do
        row(0).height = 30
        row(0).align = :center
        row(1..8).height = 17
        column(0).width = 343
        column(1).width = 60
        column(2).width = 60
        column(3).width = 60
      end
     @count = @count +1
    end
    aditional_table = [ [""]]
    move_down(10)
    table(aditional_table, :cell_style => { :inline_format => true}) do
      row(0).width = 523
      row(0).height = 30
    end
    
    text_box "Estágio Supervisionado:", :size => 8, :at => [5,608]
    text_box "Observações:\n
              Média mínima para aprovação: 6,0", :size => 8, :at => [5,558]
    text_box "Frequência mínima para a aprovação : 75% (de acordo com a\n LDB 9394/96).\n
              Ap: aprovado
              Rep: reprovado
              ApC: aprovado pelo conselho
              Dep : Dependência
              Rep Faltas: reprovado por faltas", :style => :bold, :size => 8, :at => [5,530]
    text_box "Fundamentação Lógica do Curso:", :size => 9, :at => [5,393]
    text_box "Outras Informações:\n
              -Este histórico não contém emendas ou rasuras.", :size => 8, :at => [5,195], :style => :bold
    text_box "Samambaia - DF, 16 de Maio de 2013.", :style => :bold, :size => 8, :at => [5,138]


    table_components_2 = [ ["",""]]
    move_down(20)
    table(table_components_2) do
      column(0).width = 261.5
      column(0).height = 150
      column(1).width = 261.5
    end
    
    legal_info =[ [""]]
    legal_info_2 = [ ["Módulo","Semestre/Ano","Dias","Estabelecimento de Ensino","Cidade/UF"]]
    legal_info_4 = [ ["Carga horária total",""],
                     ["Data de conclusão",""]]
    legal_info_5 = [ [""]]
    legal_info_6 = [ [""]]
    move_down(15)
    
    table(legal_info) do
      row(0).width = 523
      row(0).height = 30
    end
    table(legal_info_2, :cell_style => { :size => 9, :align => :center }) do
      column(0).width = 70
      column(1).width = 90
      column(2).width = 50
      column(3).width = 213
      column(4).width = 100
    end
    @count = 1
    for i in 0..3
      legal_info_3 = [ ["#{@count}º","","","",""]]
      table(legal_info_3, :cell_style => { :align => :center }) do
        column(0).width = 70
        column(1).width = 90
        column(2).width = 50
        column(3).width = 213
        column(4).width = 100     
      end
      @count = @count + 1
    end
    table(legal_info_4) do
      column(0).width = 160
      column(1).width = 363
    end
    table(legal_info_5) do
      row(0).width = 523
      row(0).height = 60
    end
    table(legal_info_6) do
      row(0).width = 523
      row(0).height = 130
    end
  end
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB", :at => [200, -10], :style => :bold
      draw_text "Data de emissão: #{I18n.l(Time.now)}", :at => [360, -10], :font => "Helvetica"
    end
  end
end