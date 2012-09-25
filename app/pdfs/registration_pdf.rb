class RegistrationPdf < Prawn::Document
  def initialize(registration)
    #template with header
    template_filename = "#{Rails.root}/app/pdfs/templates/full_template.pdf"
    super(:top_margin => 110, :template => template_filename)
    #super()
    @registration = registration
    header_complement
    stroke_horizontal_line 0, 550, :at => 655
    title
    stroke_horizontal_line 0, 550, :at => 615    
    horizontal_rule 
    content
    footer                
  end
  
  def content
            move_down 60
            font("Courier", :size => 10) do
              text_box "Matrícula............: #{@registration.registration_number}
                        Nome do(a) aluno(a)..: #{@registration.person.try(:name)}
                        Naturalidade/UF......: #{@registration.person.city.try(:name)} / #{@registration.person.city.state.try(:acronym)}
                        Data de nascimento...: #{@registration.person.try(:birth_date).strftime('%d/%m/%Y')}
                        Identidade...........: #{@registration.person.person_identification_doc.try(:model_rg_custom)}
                        Endereço.............: #{@registration.person.person_address.try(:model_full_address)}",
              :at => [30, 580],
              :leading => 5
            end
  end
    
  def header_complement
    font("Helvetica", :size => 16, :style => :bold) do
      text_box "#{@registration.course_matrix.course.dept.dept.try(:name)}", 
      :at => [45, 700], 
      :align => :center 
    end     
    font("Helvetica", :size => 10, :style => :bold) do
      text_box "Criado pela Lei No. 11.892, de 29/12/2008, DOU No. 253, 30/12/2008, Seção I", 
      :at => [45, 680], 
      :align => :center 
    end   

  end
  
  def title
    font("Helvetica", :size => 20, :style => :bold ) do
     text_box "Declaração de Escolaridade", 
     :at => [45, 640], 
     :align => :center
    end
  end
  
  def footer
    repeat(:all, :dynamic => true) do
      draw_text page_number, :at => [500, 0]
    end
  end
  
  
end