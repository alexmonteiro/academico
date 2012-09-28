class CreateClassRecordTypes < ActiveRecord::Migration
  def change
    create_table :class_record_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
