=begin
-- Select de Pessoas Físicas
select ('
person = Person.new(
         {:name => \''||nome||'\', 
          :birth_date => \''||data_nascimento||'\', 
          :father_name => \''||coalesce(nome_pai,'não informado')||'\',  
          :mom_name => \''||nome_mae||'\', 
          :email => \''||coalesce(email,'não informado')||'\',  
          :lattes_url => \''||coalesce(endereco_lattes,'em branco')||'\',  
          :gender_id => '||coalesce(sexo_id,0)||',  
          :education_degree_id => '||grau_formacao_id||',  
          :race_id => '||coalesce(raca_id,0)||',
          :marital_status_id => '||estado_civil_id||',
          :blood_type_id => '||coalesce(tipo_sanguineo_id,0)||',
          :country_id => '||coalesce(pais_id,24)||',                                                  
          :city_id => '||coalesce(municipio_id,0)||',                              
          :number_children => '||coalesce(numero_filhos,0)||'                                                            
         })
person.id = '||pessoa_fisica.id||'
person.save!         
       ') as comando
from pessoa_fisica order by id;

--Comando em poucas linhas
select ('person = Person.new({:name => \''||nome||'\', :birth_date => \''||data_nascimento||'\', :father_name => \''||coalesce(nome_pai,'não informado')||'\', :mom_name => \''||nome_mae||'\', :email => \''||coalesce(email,'não informado')||'\', :lattes_url => \''||coalesce(endereco_lattes,'em branco')||'\', :gender_id => '||coalesce(sexo_id,0)||', :education_degree_id => '||grau_formacao_id||', :race_id => '||coalesce(raca_id,0)||', :marital_status_id => '||estado_civil_id||', :blood_type_id => '||coalesce(tipo_sanguineo_id,0)||', :country_id => '||coalesce(pais_id,24)||', :city_id => '||coalesce(municipio_id,0)||', :number_children => '||coalesce(numero_filhos,0)||'})
person.id = '||pessoa_fisica.id||'
person.save! ') as comando from pessoa_fisica order by id;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('person = Person.new({:name => \''||nome||'\', :birth_date => \''||data_nascimento||'\', :father_name => \''||coalesce(nome_pai,'não informado')||'\', :mom_name => \''||nome_mae||'\', :email => \''||coalesce(email,'não informado')||'\', :lattes_url => \''||coalesce(endereco_lattes,'em branco')||'\', :gender_id => '||coalesce(sexo_id,0)||', :education_degree_id => '||grau_formacao_id||', :race_id => '||coalesce(raca_id,0)||', :marital_status_id => '||estado_civil_id||', :blood_type_id => '||coalesce(tipo_sanguineo_id,0)||', :country_id => '||coalesce(pais_id,24)||', :city_id => '||coalesce(municipio_id,0)||', :number_children => '||coalesce(numero_filhos,0)||'})
person.id = '||pessoa_fisica.id||'
person.save! ') as comando from pessoa_fisica order by id;" > pessoas

=end

# Alimenta tabela de Departamentos com as instituicoes Ex: Insituto Federald e Brasília
puts 'Inserindo Pessoas'
Person.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('people_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('people_id_seq', (select max(id) from people), true);")