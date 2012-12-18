class PersonPdf < Prawn::Document
  def initialize(params)
    template_filename = "#{Rails.root}/app/pdfs/templates/full_template.pdf"
    super(:top_margin => 95, :template => template_filename)
    #super()
    @person = params[:person]
    @people_telephone = params[:people_telephones]
    @person_address = params[:person_address]
    @person_identification_doc = params[:person_identification_doc]

    #header
    data_header
    move_down(10)
    data_table_content
    stroke_horizontal_line 0, 550, :at => 5
  end
  
  def data_header
    font("Courier", :size => 11) do
      data_header = [["<font size='15'><b>Dados Pessoais</b></font>"]]
      
      table(data_header, :width => 540, :cell_style => { :inline_format => true }) do
        row(0).borders = [:bottom, :top]
        row(0).align = :center
      end
    end
  end
  
  def data_table_content
    font("Courier", :size => 10) do

      data_content = [["<font size='13'><b>Dados Gerais</b></font>",""],
                      ["Nome...........................:","#{@person.try(:name)}"],
                      ["Data de Nascimento.............:","#{@person.try(:birth_date).blank? ? "" : @person.try(:birth_date).strftime('%d/%m/%Y')}"],
                      ["Nome do Pai....................:","#{@person.try(:father_name)}"],
                      ["Nome da Mãe....................:","#{@person.try(:mom_name)}"],
                      ["E-mail.........................:","#{@person.try(:email)}"],
                      ["Lattes.........................:","#{@person.try(:lattes_url)}"],
                      ["Sexo...........................:","#{@person.try(:gender).try(:gender)}"],
                      ["Formação.......................:","#{@person.try(:education_degree).try(:degree)}"],
                      ["Etnia..........................:","#{@person.try(:race).try(:race)}"],
                      ["Estado Civil...................:","#{@person.try(:marital_status).try(:status)}"],
                      ["Tipo Sanguíneo.................:","#{@person.try(:blood_type).try(:type)}"],
                      ["País...........................:","#{@person.try(:country).try(:name)}"],
                      ["Estado.........................:","#{@person.try(:state).try(:name)}"],
                      ["Cidade.........................:","#{@person.try(:city).try(:name)}"],
                      ["Filhos(os).....................:","#{@person.try(:number_children)}"]]
                      
                      @vinculos = ""
                      @total_vinculos = @person.person_types.count
                      if @total_vinculos > 0
                        @person.person_types.each_with_index do | pt, ind| 
                          ind < (@total_vinculos - 1) ? @vinculos << "#{pt.description} / " :  @vinculos << "#{pt.description}"
                        end
                      else
                        #@vinculos << "#{@person.person_person_types[0].person_type.description}"
                      end
                      data_content += [["Vínculo(s).....................:","#{@vinculos}"]]
                      data_content += [[" "," "],
                                       ["<font size='13'><b>Dados Residenciais</b></font>"," "],
                                       ["Endereço.......................:","#{@person.person_address.try(:model_full_address)}"],
                                       ["Caixa Postal...................:","#{@person.person_address.try(:post_office_box).blank? ? " " : @person.person_address.try(:post_office_box)} Zona: #{@person.person_address.try(:provenance_area).try(:description).upcase!}"],
                                       [" "," "],
                                       ["<font size='13'><b>Contatos Telefônicos</b></font>"," "]]
                      
                      if @people_telephone.blank?
                        data_content += [["Telefone.......................:", " "]]
                      else @people_telephone.count < 4
                        @people_telephone.each do |telephone|
                          !telephone.blank? ? data_content += [["Telefone.......................:", " (#{telephone.area_code})#{telephone.number} - (#{telephone.telephone_type.telephone_type}) "]] : "Telefone.......................: "
                        end
                      end
                      
                      #Lista os Documentos da Pessoa
                      data_content += [[" ", " "],
                                       ["<font size='13'><b>Dados Documentais</b></font>", " "],
                                       ["CPF............................: ","#{@person.person_identification_doc.try(:cpf)}"],
                                       ["RG.............................: ","#{@person.person_identification_doc.try(:rg)}"],
                                       ["Data de Expedição do RG........: ","#{@person.person_identification_doc.try(:rg_date_issuance).blank? ? "" : @person.person_identification_doc.try(:rg_date_issuance).strftime('%d/%m/%Y')}"],
                                       ["Órgão Expedidor................: ","#{@person.person_identification_doc.try(:rg_issuing_institution).try(:description)}"],
                                       ["UF do RG.......................: ","#{@person.person_identification_doc.try(:rg_uf).try(:name)}"],
                                       ["Certidão de Nascimento.........: ","#{@person.person_identification_doc.try(:birth_certificate)}"],
                                       ["Data de Expedição da Certidão..: ","#{@person.person_identification_doc.try(:bc_date_issuance).blank? ? "" : @person.person_identification_doc.try(:bc_date_issuance).strftime('%d/%m/%Y')}"],
                                       ["Livro da Certidão..............: ","#{@person.person_identification_doc.try(:bc_book)}"],
                                       ["Folha da Certidão..............: ","#{@person.person_identification_doc.try(:bc_sheet)}"],
                                       ["Cartório da Certidão...........: ","#{@person.person_identification_doc.try(:bc_notarys_office)}"],
                                       ["CTPS...........................: ","#{@person.person_identification_doc.try(:ctps)}"],
                                       ["Série CTPS.....................: ","#{@person.person_identification_doc.try(:ctps_series)}"],
                                       ["CNH............................: ","#{@person.person_identification_doc.try(:cnh)}"],
                                       ["Data de Expedição da CNH.......: ","#{@person.person_identification_doc.try(:cnh_date_issuance).blank? ? "" : @person.person_identification_doc.try(:cnh_date_issuance).strftime('%d/%m/%Y')}"],
                                       ["Data de Validade da CNH........: ","#{@person.person_identification_doc.try(:cnh_expiration_date).blank? ? "" : @person.person_identification_doc.try(:cnh_expiration_date).strftime('%d/%m/%Y')}"],
                                       ["Documento Militar..............: ","#{@person.person_identification_doc.try(:military_document)}"],
                                       ["Tipo do Documento..............: ","#{@person.person_identification_doc.try(:military_document_type).try(:description)}"],
                                       ["Região.........................: ","#{@person.person_identification_doc.try(:military_document_region)}"], 
                                       ["Título de Eleitor..............: ","#{@person.person_identification_doc.try(:voter_registration)}"],
                                       ["Data de Expedição..............: ","#{@person.person_identification_doc.try(:vr_date_issuance).blank? ? "" : @person.person_identification_doc.try(:vr_date_issuance).strftime('%d/%m/%Y')}"],
                                       ["Zona...........................: ","#{@person.person_identification_doc.try(:vr_zone)}"],
                                       ["Seção..........................: ","#{@person.person_identification_doc.try(:vr_section)}"],
                                       ["UF do Título de Eleitor........: ","#{@person.person_identification_doc.try(:vr_uf).try(:name)}"],
                                       ["PIS/PASEP......................: ","#{@person.person_identification_doc.try(:pis_pasep)}"]]
                      
                      
                      
    
    table(data_content, :width => 540, :cell_style => { :inline_format => true }) do
      # row(0).align = :center
      # row(0).font_style = :bold
      # row(18).font_style = :bold
      columns(0).width = 225
      columns(0..16).padding = [0,0,0,0]
      row(0..50).borders = []
      # columns(1).width = 40
      # columns(2).width = 60
      # columns(3).width = 385
      # columns(4).width = 210
    end
    
    end
  end

  def title
     
     font("Courier", :size => 15, :style => :bold ) do
     text_box "Dados Pessoais",
     :at => [0,654],
     :align => :center

    end
  end

  def subtitles(subtitle)
    font("Courier", :size => 13, :style => :bold) do
      text_box "#{subtitle[:text_str]}",
      :align => :left,
      :at => subtitle[:at]
    end
  end
  
  # def table_people
    # @tabela = [["Nº", 'Nome', 'Matrícula', 'CPF', 'Curso', 'Campus', 'Total de Aulas Cadastradas', "Porcentagens de Faltas no Período"]] 
#     
    # @person_identification_doc.each do |pid|
      # @tabela += [["#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}" ]]
    # end
#     
    # table(@tabela) do
      # row(0).background_color = "00AA00"
    # end
  # end
  


end