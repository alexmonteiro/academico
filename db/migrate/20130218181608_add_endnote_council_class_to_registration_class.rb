class AddEndnoteCouncilClassToRegistrationClass < ActiveRecord::Migration
  def change
    add_column :registration_classes, :endnote_council_class, :decimal
  end
end
