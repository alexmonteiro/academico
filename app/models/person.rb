require 'extend_string'
class Person < ActiveRecord::Base
  belongs_to :gender
  belongs_to :education_degree
  belongs_to :race
  belongs_to :marital_status
  belongs_to :blood_type
  belongs_to :city
  has_many :person_person_types, :dependent => :destroy
  has_many :person_types, :through => :person_person_types
  has_many :people_telephones, :dependent => :destroy
  has_one :person_address, :dependent => :destroy
  has_one :person_identification_doc, :dependent => :destroy
  has_many :registrations
  default_scope :order => :name 
  before_destroy :has_children?

  attr_accessible :birth_date, :email, :father_name, :lattes_url, :mom_name, :name, :number_children,
                  :city_id, :race_id, :education_degree_id, :marital_status_id, :blood_type_id, :gender_id,
                  :people_telephones_attributes, :person_address_attributes, :person_identification_doc_attributes, :person_person_types_attributes, :person_person_type_depts_attributes,
                  :person_person_types, :person_type_ids

  #Campos para aceitar atributos aninhados
  accepts_nested_attributes_for :people_telephones, :reject_if => lambda { |a| a[:number].blank?}, :allow_destroy => true
  accepts_nested_attributes_for :person_address
  accepts_nested_attributes_for :person_identification_doc
  accepts_nested_attributes_for :person_person_types
    
  #Validações
  validates :name, :birth_date, :mom_name, :gender_id, :education_degree_id, :presence => {:message => "deve ser informado."}
  validates :city_id, :race_id, :presence => {:message => "deve ser informado."}
  validates :number_children, :numericality => { :only_integer => true }
  #validates :email, :uniqueness => true
  
  def model_name_whitout_accents
    self.registration_class.registration.person.try(:name).removeaccents
  end
  
  #CPF
  def cpf
    self.person_identification_doc.try(:cpf)
  end
  
  #RG
  def rg
    self.person_identification_doc.try(:model_rg_custom)
  end

  searchable do
    text :id, :birth_date, :email, :name, :number_children, :cpf, :rg
    string :name    
  end  
  
  #Metodo para Salvar os campos de Person_Person_Type_Depts em Person
  def create_depts_by_person_types(params)
    person_types_hash = params[:person_type_depts_attributes] #=> Depts
    person_types_checkeds = params[:person_types_checkeds] #=> Check_box checkeds
    if !person_types_checkeds.blank? # => Verifica se o hash de Check_boxes está vazio (sem nenhum checked)
      person_types_checkeds.each do |ptc| # => Realiza uma iteração para cada Vinculo Institucional Checked
        if ptc != "1" # => No caso do id 1, este está relacionado ao tipo de Vinculo Intitucioinal `Aluno` ao qual não está ligado a nenhuma Unidade Organizacional pois este se vincula através da Matrícula
          person_person_type_dept = self.person_person_types.build(:person_type_id => ptc) # => Aqui cria-se o objeto person_person_type para pessoas com o person_type com o valor que a variavel 'ptc' oferecer
          person_person_type_dept.save! # => Salva o objeto criado na na linha de cima
          if !person_types_hash[ptc].blank? # => Verifica se o Vinculo Institucional trazido está vazio no hash de Depts de Unidade Organizacional (exceto no caso de 'Aluno')
            person_types_hash[ptc].each do |pt| # => Iteração sobre cada Vinculo Institucional para pegar as Unidades Organizacionais Vinculadas
              person_person_type_dept.person_person_type_depts.build(:dept_id => pt).save! if !pt.blank? # => Aqui cria-se o objeto person_person_type_depts para pessoas com o person_type com o valor que a variavel 'pt' oferecer e salva
            end
          end
        else # => Se for id 1 do tipo Aluno
          person_person_type_dept = self.person_person_types.build(:person_type_id => ptc) # => Aqui cria-se o objeto person_person_type para pessoas com o person_type com o valor que a variavel '1' para aluno
          person_person_type_dept.save! # => Salva o objeto criado na na linha de cima
        end
      end
    end
    
  end
  
  #Metodo para Validar os campos de Person_Person_Type_Depts em Person
  def validates_depts_by_person_types(params)
    person_types_hash = params[:person_type_depts_attributes] #=> Hash de Depts indexados por tipo de pessoa
    person_types_checkeds = params[:person_types_checkeds] #=> Hash de Check_box checkeds
    
    if person_types_checkeds.blank? # => Verifica se o hash de Check_boxes está vazio (sem nenhum checked)
      errors.add(:base, "Cadastro precisa ter algum Vínculo Institucional") # => Adiciona o erro
      validator = false # => retorna falso se nao houver nenhum Vinculo Institucional
    else 
      validator = true # => retorna verdadeiro por um momento se as condições seguintes não forem atendidas
      person_types_checkeds.each do |ptc| # => Realiza uma iteração para cada Vinculo Institucional Checked
        if ptc != "1" # => No caso do id 1, este está relacionado ao tipo de Vinculo Intitucioinal `Aluno` ao qual não está ligado a nenhuma Unidade Organizacional pois este se vincula através da Matrícula
          if person_types_hash[ptc].blank? # => Verifica se o Vinculo Institucional trazido está vazio no hash de Depts de Unidade Organizacional (exceto no caso de 'Aluno')
            errors.add(:base, "O Vinculo Institucional '#{PersonType.find(ptc).description}' tem que estar ligado a uma Unidade Organizacional") # => Adiciona o erro
            validator = false # => retorna falso se nao houver nenhuma Unidade Organizacional selecionada se o Vinculo Institucional estiver selecionado
            break
          else
            person_types_hash[ptc].each do |dept|
              if dept.blank? # Verifica se ha alguma Unidade Organizacional em branco quando a condição diz que não Existe Vinculo Institucional
                errors.add(:base, "Unidade Organizacional sem Vinculo Institucional em '#{PersonType.find(ptc).description}'") # => Adiciona o erro
                validator = false # => retorna falso se nao houver Unidade Organizacional selecionada mas sem o Vinculo Institucional estiver selecionado
                break
              end
            end
          end
        end
      end
      validator #Retorna Verdadeiro ou falso dependendo das condições acima
    end  
  end
  
  
  private
  def has_children?
    errors.add(:base, "Existem matrículas associadas a esta pessoa") unless registrations.count == 0
   
    if errors.size > 0
     false
    else
     true
    end    
  end

end
