class CoursePdf < Prawn::Document
  def initialize(course)
    #template_filename = "#{Rails.root}/app/pdfs/templates/full_template.pdf"
    super(:top_margin => 110)
    #super()
    @course = course

    header
    title
    content
    footer                
  end
  
  def content
         move_up(30)
        font("Helvetica", :size => 16, :style => :bold) do
         text "Curso: #{@course.name}"    
         #stroke_horizontal_rule
        end

            font("Helvetica", :size => 8) do
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
                        column(1).style :width => 450
                   end


            end

            text  "\n"
            font("Helvetica", :size => 16, :style => :bold) do
             text "Currículo atual: #{@course.course_matrices.last.model_custom_name}"
             stroke_horizontal_rule
            end

            text  "\n"
            font("Helvetica", :size => 12) do
              @course.course_matrices.last.matrix_disciplines.group_by(&:maxseasons).each do |maxseason, disciplines|
                 font("Helvetica", :size => 11, :style => :bold) do
                  text "Período #{maxseason}:"
                 end  
             		      disciplines.sort_by(&:id).each do |discipline|
             		        if !discipline.discipline_name.nil?
                         font("Helvetica", :size => 10) do
              		         text discipline.discipline.try(:name), :width => -100
              		       end
             		        end
             		      end

              end
            end    
  end
    
  def header
    image "app/assets/images/ifbhorizontal_logo.jpg", :at => [0, 740], :width => 140, :height => 55      
    text_box "Ministério da Educação", :at => [60, 735], :align => :center, :font => "Helvetica", :size => 12, :style => :bold
    text_box "Insitituto Federal de Ciência, Educação e Tecnologia de Brasília - IFB", :at => [135, 720], :align => :center, :size => 10, :style => :bold, :font => "Helvetica"  
  end
  
  def title
     text_box "Relatório de especificação de curso", :at => [115, 705], :align => :center, :size => 16, :style => :bold, :font => "Courier"
  end
  
  def footer
    repeat(:all, :dynamic => true) do
      draw_text page_number, :at => [500, 0]
    end
  end
  
  
end