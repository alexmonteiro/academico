class PresenceListPDF < Prawn::Document
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
      draw_text "Página #{i+1} de #{page_count}", :at => [700, -10]
    end
  end
  def footer
    string = "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'} ACADEMICO - IFB Página <page> de <total>" # Green page numbers 1 to 7
    options = {:at => [bounds.right - 550, 0], :start_count_at => 1} 
    number_pages string, options
  end 
  
  def title
    image "app/assets/images/2237_ifbhorizontal.jpg", :at => [0,555], :width => 165, :height => 55
    text_box "Lista de Presença", :at => [180,534], :size => 12, :style => :bold
    #text_box "#{@discipline.discipline_year.blank? ? " " : "#{@discipline.discipline_year.strftime('%Y')}.#{@discipline.school_class_period}"}", :at => [50,527], :size => 8 #Modificar a Data
  end
  
  def content
    font_size 8
    data_header = [["<b>Curso:</b> #{@discipline.school_class.model_course_matrix}", "<b>Elemento Curricular:</b> #{@discipline.discipline_name}"],
                      ["<b>Professor:</b> #{@discipline.discipline_teaches}", "<b>Data:</b> ____/____/____"]]
    data_content = [["Nº","Matrícula","Aluno","Assinatura"]]
    
    #contador de numero
    count = 0
    #preenche cada linha da tabela com um aluno matriculado a classe
     if @preenchido.blank? || @discipline.class_records.blank?
             @discipline.registration_classes.each_with_index do |student, f|
                data_content += [["#{count+1}","#{student.student_registration_number}"," "," "]] 
                count = count +1
             end
     else
        @discipline.class_records.each do |class_record|
          data_content += [["#{I18n.l(class_record.recorded_at) if class_record.recorded_at}","#{class_record.class_record_type.description if !class_record.class_record_type.blank?}","#{class_record.class_time.model_custom_name if !class_record.class_time.blank?}","#{class_record.record if class_record.record}","#{class_record.note if class_record.note}"]]
        end
      end

    data_type = [[""]]
   
    move_up(10)
    bounding_box([320,550], :width => 10) do
      table(data_header, :width => 455, :cell_style => { :inline_format => true }) do
        row(0..3).borders = []
        row(0..3).columns(0..1).width = 227.5
      end
    end
    move_down(10)
    table(data_content, :width => 775) do
      row(0).align = :center
      row(0).font_style = :bold
      columns(0).width = 40
      columns(1).width = 150
      columns(2).width = 250
      columns(3).width = 335
      columns(0).align = :center
      columns(1).align = :center
      columns(2).align = :center
    end
    table(data_type, :width => 775) do
      row(0).columns(0).width = 775
      row(0).align = :center
      row(0).borders = []
    end
  end 
end
