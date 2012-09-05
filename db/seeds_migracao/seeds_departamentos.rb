=begin
-- Select de Instituicoes
select ('
dept = Dept.new(
         {:name => \''||nome||'\', 
          :acronym => \''||sigla||'\', 
          :cnpj => \''||cnpj||'\',  
          :started_at => \''||data_inicio||'\', 
          :site => \''||coalesce(site,'em branco')||'\',  
          :email => \''||coalesce(email,'em branco')||'\',  
          :description => \''||coalesce(descricao,'em branco')||'\',  
          :dept_type_id => DeptType.find(1).id,  
          :dept_id => nil
         })
dept.id = '||instituicao.elemento_organizacional_id||'
dept.save!         
       ') as comando
from instituicao, elemento_organizacional 
where instituicao.elemento_organizacional_id = elemento_organizacional.id;

=end

# Alimenta tabela de Departamentos com as instituicoes Ex: Insituto Federald e Brasília
puts 'Inserindo Departamentos'
Dept.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('depts_id_seq', 1, false);")

## Colar o código aqui

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('depts_id_seq', (select max(id) from depts), true);")