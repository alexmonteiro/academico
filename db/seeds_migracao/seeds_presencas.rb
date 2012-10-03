# Alimenta tabela de Presenças
=begin
-- Select de Instituicoes
select ('
class_record_presences = ClassRecordPresences.create(
         :class_record_id => '''||ARRAY_TO_STRING(ARRAY[aula_id],'')||''', 
          :registration_class_id => RegistrationClass.where(:registration_id => '''||matricula_id||''').where(:discipline_class_id => '''||classe_id||''').first.id,
          :is_present => '''||ARRAY_TO_STRING(ARRAY[presenca],'')||'''
         )
') as comando
from falta;


-- Comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('
class_record_presences = ClassRecordPresence.create(
         :class_record_id => '''||ARRAY_TO_STRING(ARRAY[aula_id],'')||''', 
          :registration_class_id => RegistrationClass.where(:registration_id => '''||matricula_id||''').where(:discipline_class_id => '''||classe_id||''').first.id,
          :is_present => '''||ARRAY_TO_STRING(ARRAY[presenca],'')||'''
         )
') as comando
from falta;" > presencas


-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],' ')

-- Comando console de load

load "db/seeds_migracao/seeds_presencas.rb"

=end

ClassRecordPresence.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('class_record_presences_id_seq', 1, false);")

## Colar o código aqui

