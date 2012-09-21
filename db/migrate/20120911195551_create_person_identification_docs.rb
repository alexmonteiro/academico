class CreatePersonIdentificationDocs < ActiveRecord::Migration
  def change
    create_table :person_identification_docs do |t|
      t.references :person
      t.string :cpf
      t.string :rg
      t.integer :rg_issuing_institution
      t.date :rg_date_issuance
      t.integer :rg_uf
      t.string :birth_certificate
      t.string :bc_notarys_office
      t.string :bc_book
      t.string :bc_sheet
      t.date :bc_date_issuance
      t.string :ctps
      t.string :ctps_series
      t.string :pis_pasep
      t.string :cnh
      t.date :cnh_date_issuance
      t.string :cnh_expiration_date
      t.string :military_document
      t.references :military_document_type
      t.string :military_document_region
      t.string :voter_registration
      t.string :vr_zone
      t.string :vr_section
      t.integer :vr_uf
      t.date :vr_date_issuance

      t.timestamps
    end
    add_index :person_identification_docs, :person_id
    add_index :person_identification_docs, :military_document_type_id
    add_index :person_identification_docs, :rg_issuing_institution
    add_index :person_identification_docs, :rg_uf
    add_index :person_identification_docs, :vr_uf
  end
end
