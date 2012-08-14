class CreateProvenanceAreas < ActiveRecord::Migration
  def change
    create_table :provenance_areas do |t|
      t.string :description

      t.timestamps
    end
  end
end
