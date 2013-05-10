class AddManyColumnsToRegistration < ActiveRecord::Migration
  def change
    #Colunas para acrescentar aos dados do(a) Aluno(a)
    add_column :registrations, :family_income, :string #Renda Familiar
    add_column :registrations, :how_many_live, :integer #Mora com quantos(Quantidade de Pessoas que mora)
    add_column :registrations, :have_work, :boolean #Tem Trabalho? (Sim ou nao)
    add_column :registrations, :occupation, :string #Profissão
    add_column :registrations, :workplace, :string #Local de trabalho
    
    #Colunas para Dados dos responsaveis do(a) Aluno(a)
    add_column :registrations, :responsible_complete_name, :string #Nome Completo do Responsável
    add_column :registrations, :responsible_cpf, :string #CPF do Responsável
    add_column :registrations, :responsible_kinship, :string #Parentesco do Responsável
    add_column :registrations, :responsible_address, :text #Endereço do responsável
    add_column :registrations, :responsible_cep, :string #CEP do responsável
    add_column :registrations, :responsible_have_work, :boolean #Tem Trabalho? (Sim ou nao) do Responsável
    add_column :registrations, :responsible_occupation, :string #Profissão do Rsponsável
    add_column :registrations, :responsible_workplace, :string #Local de trabalho do Responsável
    add_column :registrations, :responsible_workphone, :string #Telefone de trabalho do Responsável
    add_column :registrations, :responsible_telephone, :string #Telefone do Responsável
    add_column :registrations, :responsible_schooling, :string #Escolaridade do Responsável => Rever esta parte
    
    #Colunas sobre a Saude do(a) Aluno(a)
    add_column :registrations, :presents_special_need, :boolean #Tem Necessidade Especial
    add_column :registrations, :special_need_description, :text #Descrição das necessidades especiais
    add_column :registrations, :presents_health_problem, :boolean #Apresenta Algum tipo de problema de saúde/alergia
    add_column :registrations, :health_problem_description, :text #Descrição dos problemas de saúde
   
    #Colunas para Escolaridade do(a) Aluno(a)
    add_column :registrations, :precedence_school_id, :integer #Procedência escolar
    add_column :registrations, :parent_institution, :string #Instituição de Origem
    add_column :registrations, :year_completion, :string #Ano de conclusão
    add_column :registrations, :is_attending_scholl_level, :boolean #Está cursando algum nível de escolaridade
    add_column :registrations, :attending_scholl_level_description, :text #Está cursando algum nível de escolaridade
    add_column :registrations, :dont_take_another_vacance_public_institution, :boolean #Declara que nao ocupa vaga em outra instituição de ensiono Publica
    add_column :registrations, :dont_take_another_prouni_vacance_public_institution, :boolean #Declara que nao ocupa vaga em outra instituição de ensiono Publica pelo PROUNI
    
    add_index :registrations, :precedence_school_id
  end
end
