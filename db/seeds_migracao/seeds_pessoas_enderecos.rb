=begin

-- Prepara vinculos
select ('person = PersonAddress.new(:person_id => '||pessoa_fisica.id||', :street_type_id => '||tipo_logradouro_id||', :city_id => '||endereco.municipio_id||', :street_name => '''||coalesce(nome_logradouro,'')||''', :complement => '''||coalesce(complemento,'')||''', :post_office_box => '''||coalesce(caixa_postal, '')||''', :neighborhood => '''||coalesce(bairro, '')||''', :zip_code => '||coalesce(cep,0)||', :number => '''||coalesce(numero,'')||''', :provenance_area_id => '||coalesce(zona_procedencia_id,0)||' )
person.save') as comando 
from pessoa_fisica, endereco where pessoa_fisica.endereco_id = endereco.id;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('person = PersonAddress.new(:person_id => '||pessoa_fisica.id||', :street_type_id => '||tipo_logradouro_id||', :city_id => '||endereco.municipio_id||', :street_name => '''||coalesce(nome_logradouro,'')||''', :complement => '''||coalesce(complemento,'')||''', :post_office_box => '''||coalesce(caixa_postal, '')||''', :neighborhood => '''||coalesce(bairro, '')||''', :zip_code => '||coalesce(cep,0)||', :number => '''||coalesce(numero,'')||''', :provenance_area_id => '||coalesce(zona_procedencia_id,0)||' )
person.save') as comando 
from pessoa_fisica, endereco where pessoa_fisica.endereco_id = endereco.id;
" > seeds_people_address

=end
# Alimenta tabela de Endereços das Pessoas
PersonAddress.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('person_addresses_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('person_addresses_id_seq', (select max(id) from person_addresses), true);")