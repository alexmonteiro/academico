class CreateTelephoneTypes < ActiveRecord::Migration
  def change
    create_table :telephone_types do |t|
      t.string :telephone_type

      t.timestamps
    end
  end
end
