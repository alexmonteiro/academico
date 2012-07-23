class CreateSpecialNeedsTypes < ActiveRecord::Migration
  def change
    create_table :special_needs_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
