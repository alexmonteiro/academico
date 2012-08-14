class CreateStreetTypes < ActiveRecord::Migration
  def change
    create_table :street_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
