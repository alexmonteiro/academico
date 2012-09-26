=begin

-- Prepara vinculos
select ('
person = PeopleTelephone.new(
         :people_id => '''||ARRAY_TO_STRING(ARRAY[pessoa_fisica_id],'')||''', 
         :telephone_type_id => '''||ARRAY_TO_STRING(ARRAY[tipo_telefone_id],'')||''', 
         :number => '''||ARRAY_TO_STRING(ARRAY[numero],'')||''', 
         :area_code => '''||ARRAY_TO_STRING(ARRAY[codigo_area],'')||''', 
         :branch => '''||ARRAY_TO_STRING(ARRAY[ramal],'')||''')
person.save') as comando 
from pessoa_fisica_telefone, telefone where telefone.id = pessoa_fisica_telefone.telefone_id;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('
person = PeopleTelephone.new(
         :people_id => '''||ARRAY_TO_STRING(ARRAY[pessoa_fisica_id],'')||''', 
         :telephone_type_id => '''||ARRAY_TO_STRING(ARRAY[tipo_telefone_id],'')||''', 
         :number => '''||ARRAY_TO_STRING(ARRAY[numero],'')||''', 
         :area_code => '''||ARRAY_TO_STRING(ARRAY[codigo_area],'')||''', 
         :branch => '''||ARRAY_TO_STRING(ARRAY[ramal],'')||''')
person.save') as comando 
from pessoa_fisica_telefone, telefone where telefone.id = pessoa_fisica_telefone.telefone_id;" > seeds_people_telephones


-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')


-- Comando console de load

load "db/seeds_migracao/seeds_pessoas_telefones.rb"

=end
# Alimenta tabela de Telefones das Pessoas
PeopleTelephone.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('people_telephones_id_seq', 1, false);")

## Colar o código aqui

#Atualiza sequence
#ActiveRecord::Migration.execute("SELECT SETVAL('people_telephones_id_seq', (select max(id) from people_telephones), true);")