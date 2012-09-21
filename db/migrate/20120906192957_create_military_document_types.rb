class CreateMilitaryDocumentTypes < ActiveRecord::Migration
  def change
    create_table :military_document_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
