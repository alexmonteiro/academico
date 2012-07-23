class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :gender
      t.string :acronym

      t.timestamps
    end
  end
end
