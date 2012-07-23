class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :birth_date
      t.string :father_name
      t.string :mom_name
      t.string :email
      t.string :lattes_url
      t.references :gender
      t.references :education_degree
      t.references :race
      t.references :marital_status
      t.references :blood_type
      t.references :country
      t.references :state
      t.references :city
      t.integer :number_children
      t.boolean :isemployee
      t.boolean :isstudent

      t.timestamps
    end
    add_index :people, :gender_id
    add_index :people, :education_degree_id
    add_index :people, :race_id
    add_index :people, :marital_status_id
    add_index :people, :blood_type_id
    add_index :people, :country_id
    add_index :people, :state_id
    add_index :people, :city_id
  end
end
