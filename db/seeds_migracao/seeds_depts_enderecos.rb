=begin

-- Prepara vinculos
select ('dept = DeptAddress.new(:dept_id => '||elemento_organizacional_id||', :street_type_id => '||tipo_logradouro_id||', :city_id => '||endereco.municipio_id||', :street_name => '''||coalesce(nome_logradouro,'')||''', :complement => '''||coalesce(complemento,'')||''', :post_office_box => '''||coalesce(caixa_postal, '')||''', :neighborhood => '''||coalesce(bairro, '')||''', :zip_code => '||coalesce(cep,0)||', :number => '''||coalesce(numero,'')||''', :provenance_area_id => '||coalesce(zona_procedencia_id,0)||' )
dept.save') as comando 
from instituicao, endereco where instituicao.endereco_id = endereco.id
union
select ('dept = DeptAddress.new(:dept_id => '||elemento_organizacional_id||', :street_type_id => '||tipo_logradouro_id||', :city_id => '||endereco.municipio_id||', :street_name => '''||coalesce(nome_logradouro,'')||''', :complement => '''||coalesce(complemento,'')||''', :post_office_box => '''||coalesce(caixa_postal, '')||''', :neighborhood => '''||coalesce(bairro, '')||''', :zip_code => '||coalesce(cep,0)||', :number => '''||coalesce(numero,'')||''', :provenance_area_id => '||coalesce(zona_procedencia_id,0)||' )
dept.save') as comando 
from unidade_ensino, endereco where unidade_ensino.endereco_id = endereco.id;

psql -U postgres -h localhost -d dbsiga-edu -c "" > seeds_dept_address

=end
# Alimenta tabela de Endereços dos Departamentos
DeptAddress.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('dept_addresses_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
#ActiveRecord::Migration.execute("SELECT SETVAL('dept_addresses_id_seq', (select max(id) from dept_addresses), true);")