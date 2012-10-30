=begin

-- Prepara vinculos
select ('
person = PersonAddress.new(
      :person_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[pessoa_fisica.id],'')||'{#aspas#}, 
      :street_type_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[tipo_logradouro_id],'')||'{#aspas#}, 
      :city_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[endereco.municipio_id],'')||'{#aspas#}, 
      :street_name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome_logradouro],'')||'{#aspas#}, 
      :complement => {#aspas#}'||ARRAY_TO_STRING(ARRAY[complemento],'')||'{#aspas#}, 
      :post_office_box => {#aspas#}'||ARRAY_TO_STRING(ARRAY[caixa_postal],'')||'{#aspas#}, 
      :neighborhood => {#aspas#}'||ARRAY_TO_STRING(ARRAY[coalesce(bairro, '')],'')||'{#aspas#}, 
      :zip_code => {#aspas#}'||ARRAY_TO_STRING(ARRAY[cep],'')||'{#aspas#}, 
      :number => {#aspas#}'||ARRAY_TO_STRING(ARRAY[numero],'')||'{#aspas#}, 
      :provenance_area_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[zona_procedencia_id],'')||'{#aspas#} )
person.save') as comando 
from pessoa_fisica, endereco where pessoa_fisica.endereco_id = endereco.id;

psql -U postgres -h localhost -d dbsiga-edu -c "
select ('
person = PersonAddress.new(
      :person_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[pessoa_fisica.id],'')||'{#aspas#}, 
      :street_type_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[tipo_logradouro_id],'')||'{#aspas#}, 
      :city_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[endereco.municipio_id],'')||'{#aspas#}, 
      :street_name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome_logradouro],'')||'{#aspas#}, 
      :complement => {#aspas#}'||ARRAY_TO_STRING(ARRAY[complemento],'')||'{#aspas#}, 
      :post_office_box => {#aspas#}'||ARRAY_TO_STRING(ARRAY[caixa_postal],'')||'{#aspas#}, 
      :neighborhood => {#aspas#}'||ARRAY_TO_STRING(ARRAY[coalesce(bairro, '')],'')||'{#aspas#}, 
      :zip_code => {#aspas#}'||ARRAY_TO_STRING(ARRAY[cep],'')||'{#aspas#}, 
      :number => {#aspas#}'||ARRAY_TO_STRING(ARRAY[numero],'')||'{#aspas#}, 
      :provenance_area_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[zona_procedencia_id],'')||'{#aspas#} )
person.save') as comando 
from pessoa_fisica, endereco where pessoa_fisica.endereco_id = endereco.id;
" > seeds_people_address

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')


-- Comando console de load

load "db/seeds_migracao/seeds_pessoas_enderecos.rb"

=end
# Alimenta tabela de Endereços das Pessoas
PersonAddress.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('person_addresses_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
#ActiveRecord::Migration.execute("SELECT SETVAL('person_addresses_id_seq', (select max(id) from person_addresses), true);")