class CreateKnowledgeAreas < ActiveRecord::Migration
  def change
    create_table :knowledge_areas do |t|
      t.string :description

      t.timestamps
    end
  end
end
