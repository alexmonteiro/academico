class CreateDeptAddresses < ActiveRecord::Migration
  def change
    create_table :dept_addresses do |t|
      t.references :street_type
      t.references :city
      t.string :street_name
      t.string :complement
      t.string :post_office_box
      t.string :neighborhood
      t.integer :zip_code
      t.string :number
      t.references :provenance_area
      t.references :dept

      t.timestamps
    end
    add_index :dept_addresses, :street_type_id
    add_index :dept_addresses, :city_id
    add_index :dept_addresses, :provenance_area_id
    add_index :dept_addresses, :dept_id
  end
end
