class DisciplineClassPDF < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :landscape, :page_size => "A4")
    #super()
    @discipline = params[:discipline_class]
    @preenchido = params[:preenchido]
    #header
    title
    content
    signature
    foot
  end
  
  
  def foot
      page_count.times do |i|
      go_to_page(i+1)
      draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
      draw_text "ACADEMICO - IFB - #{@discipline.discipline_year.blank? ? " " : "#{@discipline.discipline_year.strftime('%Y')}.#{@discipline.school_class_period}"}", :at => [345, -10], :style => :bold
      draw_text "Página #{i+1} de #{page_count}", :at => [700, -10]
    end
  end
  
  def signature
    draw_text "Visto do Coordenador: ____________________________________", :at => [10, 15]
    draw_text "Assinatura do Professor: ____________________________________", :at => [450, 15]
  end
  
  def footer
    string = "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'} ACADEMICO - IFB Página <page> de <total>" # Green page numbers 1 to 7
    options = {:at => [bounds.right - 550, 0], :start_count_at => 1} 
    number_pages string, options
  end 
  
  def title
    image "app/assets/images/ifbhorizontal_logo.jpg", :at => [0,550], :width => 110, :height => 45
    #text_box "Instituto Federal de Brasília", :at => [50,547], :size => 8, :style => :bold
    text_box "Conteúdo Ministrado", :at => [150,547], :size => 12 ,:style => :bold
    #text "#{@discipline.discipline_year.blank? ? " " : "#{@discipline.discipline_year.strftime('%Y')}.#{@discipline.school_class_period}"}", :align => :center, :size => 14 #Modificar a Data
    move_down(15)
  end
  
  def content
    font_size 8
    data_header = [["<b>Classe:</b> #{@discipline.school_class.model_custom_tiny_name}", "<b>Unidade Organizacional:</b> #{@discipline.discipline_class_dept}"],
                      ["<b>Curso:</b> #{@discipline.school_class.model_course_matrix}", "<b>Elemento Curricular:</b> #{@discipline.discipline_name}"],
                      ["<b>Professor:</b> #{@discipline.discipline_teaches}", "<b>Aulas Ministradas/Previstas:</b> #{@discipline.discipline_class_classes_taught_planned}"],
                      ["", "<b>Carga Horária:</b> #{@discipline.discipline_class_workload}"]]
    data_content = [["Data","Tipo","Horário","Conteúdo Ministrado","Observações"]]
    
    
    
    if @preenchido.blank? || @discipline.class_records.blank?
      data_content += [[" "," "," "," "," "]] * 20
    else
      @discipline.class_records.each do |class_record|
        data_content += [["#{class_record.recorded_at.strftime("%d/%m/%Y") if class_record.recorded_at}","#{class_record.class_record_type.description if !class_record.class_record_type.blank?}","#{class_record.class_time.model_custom_name if !class_record.class_time.blank?}","#{class_record.record if class_record.record}","#{class_record.note if class_record.note}"]]
      end
    end
    
    data_type = [["Tipo = N - Normal; A - Antecipação; Reposição - R"]]
    
    
    
    #data_subfooter = [["Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}","ACADEMICO - IFB","Página #{page_count}"]]
    
    move_up(25)
    bounding_box([300, 550], :width => 2200, :height => 250) do 
      table(data_header, :width => 535, :cell_style => { :inline_format => true }) do
        row(0..3).borders = []
        row(0..3).columns(0..1).width = 267.5
        row(0..3).padding = [0,5,5,0] 
      end
    end
    
    move_down(5)
    bounding_box([0, 475], :width => 2200, :height => 435) do 
      table(data_content, :width => 775) do
        row(0).align = :center
        row(0).font_style = :bold
        columns(0).width = 70
        columns(1).width = 40
        columns(2).width = 70
        columns(3).width = 385
        columns(4).width = 210
        columns(0).align = :center
        columns(1).align = :center
        columns(2).align = :center
      end
      table(data_type, :width => 775) do
        row(0).columns(0).width = 775
        row(0).align = :center
        row(0).borders = []
      end
      
      # table(data_subfooter, :width => 775) do
        # row(0).columns(0).width = 258.33333333333333
        # columns(0).align = :left
        # columns(1).align = :center
        # columns(1).font_style = :bold
        # columns(2).align = :right
        # row(0).borders = []
      #end
    end 
  end
end