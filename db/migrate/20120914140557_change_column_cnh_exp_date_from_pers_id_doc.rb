class ChangeColumnCnhExpDateFromPersIdDoc < ActiveRecord::Migration
  def up
    remove_column :person_identification_docs, :cnh_expiration_date
    add_column :person_identification_docs, :cnh_expiration_date, :date
  end

  def down
    remove_column :person_identification_docs, :cnh_expiration_date
    add_column :person_identification_docs, :cnh_expiration_date, :string
  end
end
