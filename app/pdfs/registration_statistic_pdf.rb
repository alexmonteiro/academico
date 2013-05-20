class RegistrationStatisticPDF < Prawn::Document
  def initialize(params)
    super(:top_margin => 20, :page_layout => :portrait, :page_size => "A4")
    #super()
    @registration = params[:registration]
    title
    content
    foot
  end
  
  def title
    image "app/assets/images/2237_ifbhorizontal.jpg", :at => [0,800], :width => 120, :height => 40
    text "Instituto Federal de Brasília", :align => :center, :size => 8, :style => :bold
    text "ESTATÍSTICAS", :align => :center, :size => 12, :style => :bold
  end
  
  def content
    font_size 7
    
    move_down(8)
    stroke_horizontal_rule
    move_down(3)
    text "Dados", :style => :bold
    stroke_horizontal_rule
    
    #total registros
    total = Registration.all.count
    work = 0
    special_need = 0
    health_problem = 0
    urban = 0
    rural = 0
    enem = 0
    sisu = 0
    other = 0
    test = 0
    drawing = 0
    rivalry = 0
    pne = 0
    public_scholl = 0
    ethnic_group = 0
    income = 0
    other_program = 0 
    
    Registration.all.each do |reg|
      if !reg.have_work.blank?
        work = work + 1
      end
      if !reg.presents_special_need.blank?
        special_need = special_need + 1
      end
      if !reg.presents_health_problem.blank?
        health_problem = health_problem + 1
      end
      if reg.person.person_address.provenance_area.try(:description) == "urbana"
        urban = urban + 1
      else
        rural = rural + 1
      end
      
      if reg.ways_of_admission.try(:description) == "Sorteio"
        drawing = drawing + 1
      end
      if reg.ways_of_admission.try(:description) == "ENEM"
        enem = enem + 1
      end
      if reg.ways_of_admission.try(:description) == "SISU"
        sisu = sisu + 1
      end
      if reg.ways_of_admission.try(:description) == "Provas"
        test = test + 1
      end 
      if reg.ways_of_admission.try(:description) == "Outros"
        other = other + 1
      end  
        reg.admission_types.each do |adm|
          if adm.try(:description) == "Ampla Concorrência"
            rivalry = rivalry + 1
          end  
            if adm.try(:description) == "PNE"
              pne =  pne + 1
            end  
              if adm.try(:description) == "Escola Pública"
                public_scholl = public_scholl + 1
              end  
                if adm.try(:description) == "Etnia"
                  ethnic_group = ethnic_group + 1
                end  
                  if adm.try(:description) == "Renda"
                    income = income + 1 
                  end                  
                    if adm.try(:description) == "Outros Programas"
                      other_program = other_program + 1
                    end 
        end
      
    end 
    
    statistic = [  ["<b>Total de matrículas :</b>","#{total}"],
                   ["<b>Alunos que trabalham :</b>","#{work}"],
                   ["<b>Alunos que apresentam necessidades específicas :</b>","#{special_need}"],
                   ["<b>Alunos com problemas de saúde/alergia :</b>","#{health_problem}"],
                   ["<b>Formas de Ingresso</b>"],
                   ["<b>Sorteio :</b>","#{drawing}"],
                   ["<b>ENEM :</b>","#{enem}"],
                   ["<b>SISU :</b>","#{sisu}"],
                   ["<b>Provas :</b>","#{test}"],
                   ["<b>Outros :</b>","#{other}"],
                   ["<b>Tipo de Ingresso</b>"],
                   ["<b>Ampla Concorrência :</b>","#{rivalry}"],
                   ["<b>PNE :</b>","#{pne}"],
                   ["<b>Escola Pública :</b>","#{public_scholl}"],
                   ["<b>Etnia :</b>","#{ethnic_group}"],
                   ["<b>Renda :</b>","#{income}"],
                   ["<b>Outros programas :</b>","#{other_program}"],
                   ["<b>Alunos que moram na zona URBANA :</b>","#{urban}"],
                   ["<b>Alunos que moram na zona RURAL :</b>","#{rural}"]]
                         
    move_down(10)
    table(statistic , :cell_style => { :inline_format => true, :align => :right, :borders => [] })
    
  end
  
  def foot
      page_count.times do |i|
        go_to_page(i+1)
        draw_text "Brasília, #{I18n.l Time.now, :format => '%d de %B de %Y'}", :at => [10, -10]
        draw_text "ACADEMICO - IFB", :at => [240, -10], :style => :bold
      end
  end
end