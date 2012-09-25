class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.date :registration_at
      t.references :course_matrix
      t.references :person
      t.string :registration_number
      t.references :registration_status

      t.timestamps
    end
    add_index :registrations, :course_matrix_id
    add_index :registrations, :person_id
    add_index :registrations, :registration_status_id
  end
end
