class PersonPdf < Prawn::Document
  def initialize(params)
    template_filename = "#{Rails.root}/app/pdfs/templates/full_template.pdf"
    super(:top_margin => 110, :template => template_filename)
    #super()
    @person = params[:person]
    @people_telephone = params[:people_telephones]
    @person_address = params[:person_address]
    @person_identification_doc = params[:person_identification_doc]

    #header

    stroke_horizontal_line 0, 550, :at => 660
    title
    stroke_horizontal_line 0, 550, :at => 637
    content_data
    #table_people
    footer
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
  
  def table_people
    @tabela = [["Nº", 'Nome', 'Matrícula', 'CPF', 'Curso', 'Campus', 'Total de Aulas Cadastradas', "Porcentagens de Faltas no Período"]] 
    
    @person_identification_doc.each do |pid|
      @tabela += [["#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}","#{pid.id}" ]]
    end
    
    table(@tabela) do
      row(0).background_color = "00AA00"
    end
  end
  
  def content_data
    subtitles :text_str => "Dados Gerais",
              :at => [0,630]
    font("Courier", :size => 11) do
    #Lista os dados Gerais da Pessoa
    text_box "Nome...........................: #{@person.try(:name)}
              Data de Nascimento.............: #{@person.try(:birth_date).strftime('%d/%m/%Y')}
              Nome do Pai....................: #{@person.try(:father_name)}
              Nome da Mãe....................: #{@person.try(:mom_name)}
              E-mail.........................: #{@person.try(:email)}
              Lattes.........................: #{@person.try(:lattes_url)}
              Sexo...........................: #{@person.try(:gender).try(:gender)}
              Formação.......................: #{@person.try(:education_degree).try(:degree)}
              Etnia..........................: #{@person.try(:race).try(:race)}
              Estado Civil...................: #{@person.try(:marital_status).try(:status)}
              Tipo Sanguíneo.................: #{@person.try(:blood_type).try(:type)}
              País...........................: #{@person.try(:country).try(:name)}
              Estado.........................: #{@person.try(:state).try(:name)}
              Cidade.........................: #{@person.try(:city).try(:name)}
              Filhos(os).....................: #{@person.try(:number_children)}", 
             :at => [0,620]
    @vinculos = "Vínculo(s).....................: "
    @total_vinculos = @person.person_types.count
    if @total_vinculos > 0
      @person.person_types.each_with_index do | pt, ind| 
        ind < (@total_vinculos - 1) ? @vinculos << "#{pt.description} / " :  @vinculos << "#{pt.description}"
      end
    else
      #@vinculos << "#{@person.person_person_types[0].person_type.description}"
    end 
    text_box "#{@vinculos}", 
              :at =>[0,445]

    #Lista o Endereço da Pessoa
    subtitles :text_str => "Dados Residenciais",
              :at => [0,425]
    text_box "Endereço.......................: #{@person.person_address.try(:model_full_address)}
              Caixa Postal...................: #{@person.person_address.try(:post_office_box).blank? ? "            " : @person.person_address.try(:post_office_box)}    Zona: #{@person.person_address.try(:provenance_area).try(:description).upcase!}",
              :at => [0,415]

    #Lista o(s) Telefone(s) da Pessoa
     subtitles :text_str => "Contatos Telefônicos",
      :at => [0,371]
    if @people_telephone.blank?
      text_box "Telefone...........................: - ",
      :at => [0,360]
      
    else @people_telephone.count < 4
      @telefones = "";
      @people_telephone.each do |telephone|
        telephone.blank? ? "" : @telefones << "Telefone.......................: (#{telephone.area_code})#{telephone.number} - (#{telephone.telephone_type.telephone_type})"
      end
      text_box "#{@telefones}",
      :at => [0,360]
    end

    #Lista os Documentos da Pessoa
    subtitles :text_str => "Dados Documentais",
      :at => [0,323]
    #Cadastro de Pessoa Física
    text_box "CPF............................: #{@person.person_identification_doc.try(:cpf)}               
              RG.............................: #{@person.person_identification_doc.try(:rg)}          
              Data de Expedição do RG........: #{@person.person_identification_doc.try(:rg_date_issuance).strftime('%d/%m/%Y')}
              Órgão Expedidor................: #{@person.person_identification_doc.try(:rg_issuing_institution).try(:description)}
              UF do RG.......................: #{@person.person_identification_doc.try(:rg_uf).try(:name)}
              
              Certidão de Nascimento.........: #{@person.person_identification_doc.try(:birth_certificate)}          
              Data de Expedição da Certidão..: #{@person.person_identification_doc.try(:bc_date_issuance).strftime('%d/%m/%Y')}
              Livro da Certidão..............: #{@person.person_identification_doc.try(:bc_book)}          
              Folha da Certidão..............: #{@person.person_identification_doc.try(:bc_sheet)}
              Cartório da Certidão...........: #{@person.person_identification_doc.try(:bc_notarys_office)}
              CTPS...........................: #{@person.person_identification_doc.try(:ctps)}          
              Série CTPS.....................: #{@person.person_identification_doc.try(:ctps_series)}
              CNH............................: #{@person.person_identification_doc.try(:cnh)}
              Data de Expedição da CNH.......: #{@person.person_identification_doc.try(:cnh_date_issuance).strftime('%d/%m/%Y')}          
              Data de Validade da CNH........: #{@person.person_identification_doc.try(:cnh_expiration_date).strftime('%d/%m/%Y')}
              Documento Militar..............: #{@person.person_identification_doc.try(:military_document)}
              Tipo do Documento..............: #{@person.person_identification_doc.try(:military_document_type).try(:description)}
              Região.........................: #{@person.person_identification_doc.try(:military_document_region)}
              
              Título de Eleitor..............: #{@person.person_identification_doc.try(:voter_registration)}          
              Data de Expedição..............: #{@person.person_identification_doc.try(:vr_date_issuance).strftime('%d/%m/%Y')}
              Zona...........................: #{@person.person_identification_doc.try(:vr_zone)}          
              Seção..........................: #{@person.person_identification_doc.try(:vr_section)}          
              UF do Título de Eleitor........: #{@person.person_identification_doc.try(:vr_uf).try(:name)}
              PIS/PASEP......................: #{@person.person_identification_doc.try(:pis_pasep)}",
    :at => [0,310]


    end
    stroke_horizontal_line 0, 550, :at => 5
    
  end

  def footer

  end

end