class CreatePersonAddresses < ActiveRecord::Migration
  def change
    create_table :person_addresses do |t|
      t.references :street_type
      t.references :city
      t.string :street_name
      t.string :complement
      t.string :post_office_box
      t.string :neighborhood
      t.integer :zip_code
      t.string :number
      t.references :provenance_area
      t.references :person

      t.timestamps
    end
    add_index :person_addresses, :street_type_id
    add_index :person_addresses, :city_id
    add_index :person_addresses, :provenance_area_id
    add_index :person_addresses, :person_id
  end
end