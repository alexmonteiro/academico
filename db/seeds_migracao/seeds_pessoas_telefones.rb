=begin

-- Prepara vinculos
select ('person = PeopleTelephone.new(:people_id => '||pessoa_fisica_id||', :telephone_type_id => '||tipo_telefone_id||', :number => '||numero||', :area_code => '||codigo_area||', :branch => '||ramal||')
person.save') as comando 
from pessoa_fisica_telefone, telefone where telefone.id = pessoa_fisica_telefone.telefone_id;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('person = PeopleTelephone.new(:people_id => '||pessoa_fisica_id||', :telephone_type_id => '||tipo_telefone_id||', :number => '||numero||', :area_code => '||codigo_area||', :branch => '||ramal||')
person.save') as comando 
from pessoa_fisica_telefone, telefone where telefone.id = pessoa_fisica_telefone.telefone_id;" > seeds_people_telephones

=end
# Alimenta tabela de Telefones das Pessoas
PeopleTelephone.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('people_telephones_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('people_telephones_id_seq', (select max(id) from people_telephones), true);")