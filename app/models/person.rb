class Person < ActiveRecord::Base
  belongs_to :gender
  belongs_to :education_degree
  belongs_to :race
  belongs_to :marital_status
  belongs_to :blood_type
  belongs_to :country
  belongs_to :state
  belongs_to :city
  attr_accessible :birth_date, :email, :father_name, :isemployee, :isstudent, :lattes_url, :mom_name, :name, :number_children,
                  :city_id, :country_id, :state_id, :race_id, :education_degree_id, :marital_status_id, :blood_type_id, :gender_id

  #Validações
  validates :name, :presence => true
  validates :number_children, :numericality => { :only_integer => true }
  validates :email, :uniqueness => true
end
