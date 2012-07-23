class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :acronym
      t.references :country

      t.timestamps
    end
    add_index :states, :country_id
  end
end
