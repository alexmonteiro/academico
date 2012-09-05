=begin
cademico_rails_development=# select * from person_types;
 id | description |         created_at         |         updated_at         
----+-------------+----------------------------+----------------------------
  1 | Aluno       | 2012-07-23 17:38:04.87989  | 2012-07-23 17:38:04.87989
  2 | Servidor    | 2012-07-23 17:38:04.930323 | 2012-07-23 17:38:04.930323

-- Prepara vinculos
select ('{:person_id => '||pessoa_fisica_id||', :person_type_id => 2 }, ') as comando from funcionario union select ('{:person_id => '||pessoa_fisica_id||', :person_type_id => 1 }, ') as comando from aluno;

psql -U postgres -h localhost -d dbsiga-edu -c "" > vinculos

=end

# Alimenta tabela de vinculos
PersonPersonType.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('person_person_types_id_seq', 1, false);")

PersonPersonType.create([
  ## Colar o código aqui

])