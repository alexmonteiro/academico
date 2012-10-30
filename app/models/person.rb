require 'extend_string'
class Person < ActiveRecord::Base
  belongs_to :gender
  belongs_to :education_degree
  belongs_to :race
  belongs_to :marital_status
  belongs_to :blood_type
  belongs_to :country
  belongs_to :state
  belongs_to :city
  has_many :person_person_types
  has_many :person_types, :through => :person_person_types
  has_many :people_telephone
  has_one :person_address
  has_one :person_identification_doc
  has_many :registrations
  default_scope :order => :name

  attr_accessible :birth_date, :email, :father_name, :lattes_url, :mom_name, :name, :number_children,
                  :city_id, :country_id, :state_id, :race_id, :education_degree_id, :marital_status_id, :blood_type_id, :gender_id, :person_type_ids

  #Validações
  validates :name, :presence => true
  validates :number_children, :numericality => { :only_integer => true }
  #validates :email, :uniqueness => true

  def model_name_whitout_accents
    self.registration_class.registration.person.try(:name).removeaccents
  end

  searchable do
    text :id, :birth_date, :email, :name, :number_children
    string :name
    
  end  
end
