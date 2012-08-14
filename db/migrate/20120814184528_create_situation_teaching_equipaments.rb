class CreateSituationTeachingEquipaments < ActiveRecord::Migration
  def change
    create_table :situation_teaching_equipaments do |t|
      t.string :description

      t.timestamps
    end
  end
end
