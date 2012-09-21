class CreateIssuingInstitutions < ActiveRecord::Migration
  def change
    create_table :issuing_institutions do |t|
      t.string :description
      t.string :acronym

      t.timestamps
    end
  end
end
