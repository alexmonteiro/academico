class CreatePrecedenceSchools < ActiveRecord::Migration
  def change
    create_table :precedence_schools do |t|
      t.text :description

      t.timestamps
    end
  end
end
