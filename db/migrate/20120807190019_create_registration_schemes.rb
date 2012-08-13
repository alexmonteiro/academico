class CreateRegistrationSchemes < ActiveRecord::Migration
  def change
    create_table :registration_schemes do |t|
      t.string :description

      t.timestamps
    end
  end
end
