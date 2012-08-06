class CreateTechaxes < ActiveRecord::Migration
  def change
    create_table :techaxes do |t|
      t.string :techaxis
      t.references :techaxis_type

      t.timestamps
    end
    add_index :techaxes, :techaxis_type_id
  end
end
