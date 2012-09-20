class CoursePdf < Prawn::Document
  def initialize(course)
    super(:top_margin => 110)
    #super()
    @course = course
    header
    title
    font("Helvetica", :size => 22, :style => :bold) do
     text "Curso: #{@course.name}"    
     #stroke_horizontal_rule
    end

        font("Helvetica", :size => 12) do
=begin  
         text "\n"      
         text "Unidade: #{@course.dept.try(:name)}"      
         text "Código: #{@course.code}"
         text "Objetivo: #{@course.goal}"
         text "Períodos: #{@course.maxtime}"
         text "Início: #{@course.started_at_formatted}"
         text "Ingresso: #{@course.registration_scheme.try(:description)}"     
         text "Tipo período: #{@course.class_season_type.try(:description)}"     
         text "Modalidade de Aprendizagem: #{@course.learning_modality.try(:description)}"     
         text "Área de Conhecimento: #{@course.knowledge_area.try(:description)}"     
         text "Eixo Tecnológico: #{@course.techaxis.try(:techaxis)}"     
         text "Modalidade de Ensino: #{@course.education_modality.try(:description)}"     
=end
         table([ ["Unidade:", @course.dept.try(:name)],
                 ["Código: ", @course.code],
                 ["Objetivo:", @course.goal],
                 ["Períodos:", @course.maxtime],
                 ["Ingresso:", @course.registration_scheme.try(:description)],
                 ["Tipo período:", @course.class_season_type.try(:description)],
                 ["Modalidade:", @course.learning_modality.try(:description)],
                 ["Área:", @course.knowledge_area.try(:description)],
                 ["Eixo Tecnológico:", @course.techaxis.try(:techaxis)],
                 ["Modalidade de Ensino:", @course.education_modality.try(:description)],                                                   
               ]) do
                    column(0).style :align => :right 
                    column(1).style :width => 400
               end
               
   
        end

    
  end
    
  def header
    font("Helvetica", :size => 18, :style => :bold) do
      image "#{Rails.root}/app/assets/images/logo-if.png", :at => [0, 740], :scale => 0.75      
      text_box "Ministério da Educação\n Insitituto Federal de Ciência, Educação e Tecnologia de Brasília - IFB", 
      :at => [60, 740], 
      :align => :center
    
    end  
  end
  
  def title
    font("Courier", :size => 16, :style => :bold ) do
     text_box "Relatório de especificação de curso", 
     :at => [45, 675], 
     :align => :center
    end
  end
  
  
end