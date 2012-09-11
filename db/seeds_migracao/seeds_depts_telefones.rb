=begin

-- Prepara vinculos
select ('person = DeptTelephone.new(:dept_id => '||elemento_organizacional_id||', :telephone_type_id => '||tipo_telefone_id||', :number => '||numero||', :area_code => '||codigo_area||', :branch => '||ramal||')
person.save') as comando 
from elemento_organizacional_telefone, telefone where telefone.id = elemento_organizacional_telefone.telefone_id;

psql -U postgres -h localhost -d dbsiga-edu -c "" > seeds_dept_telephones

=end
# Alimenta tabela de Telefones dos Departamentos
DeptTelephone.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('dept_telephones_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
#ActiveRecord::Migration.execute("SELECT SETVAL('dept_telephones_id_seq', (select max(id) from dept_telephones), true);")