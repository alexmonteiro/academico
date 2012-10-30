=begin
-- Select de Pessoas Físicas
select ('
person = Person.new(
         {:name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome],'')||'{#aspas#},
          :birth_date => {#aspas#}'||ARRAY_TO_STRING(ARRAY[data_nascimento],'')||'{#aspas#},
          :father_name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome_pai],'')||'{#aspas#},  
          :mom_name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome_mae],'')||'{#aspas#}, 
          :email => {#aspas#}'||ARRAY_TO_STRING(ARRAY[email],'')||'{#aspas#},  
          :lattes_url => {#aspas#}'||ARRAY_TO_STRING(ARRAY[endereco_lattes],'')||'{#aspas#},
          :gender_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[sexo_id],'')||'{#aspas#},
          :education_degree_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[grau_formacao_id],'')||'{#aspas#},
          :race_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[raca_id],'')||'{#aspas#},
          :marital_status_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[estado_civil_id],'')||'{#aspas#},
          :blood_type_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[tipo_sanguineo_id],'')||'{#aspas#},
          :country_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[pais_id],'24')||'{#aspas#},
          :city_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[municipio_id],'')||'{#aspas#},
          :number_children => {#aspas#}'||ARRAY_TO_STRING(ARRAY[numero_filhos],'')||'{#aspas#}
         })
person.id = '||pessoa_fisica.id||'
person.save!         
       ') as comando
from pessoa_fisica 
order by id;

--Comando em arquivo

psql -U postgres -h localhost -d dbsiga-edu -c "
select ('
person = Person.new(
         {:name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome],'')||'{#aspas#},
          :birth_date => {#aspas#}'||ARRAY_TO_STRING(ARRAY[data_nascimento],'')||'{#aspas#},
          :father_name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome_pai],'')||'{#aspas#},  
          :mom_name => {#aspas#}'||ARRAY_TO_STRING(ARRAY[nome_mae],'')||'{#aspas#}, 
          :email => {#aspas#}'||ARRAY_TO_STRING(ARRAY[email],'')||'{#aspas#},  
          :lattes_url => {#aspas#}'||ARRAY_TO_STRING(ARRAY[endereco_lattes],'')||'{#aspas#},
          :gender_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[sexo_id],'')||'{#aspas#},
          :education_degree_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[grau_formacao_id],'')||'{#aspas#},
          :race_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[raca_id],'')||'{#aspas#},
          :marital_status_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[estado_civil_id],'')||'{#aspas#},
          :blood_type_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[tipo_sanguineo_id],'')||'{#aspas#},
          :country_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[pais_id],'24')||'{#aspas#},
          :city_id => {#aspas#}'||ARRAY_TO_STRING(ARRAY[municipio_id],'')||'{#aspas#},
          :number_children => {#aspas#}'||ARRAY_TO_STRING(ARRAY[numero_filhos],'')||'{#aspas#}
         })
person.id = '||pessoa_fisica.id||'
person.save!         
       ') as comando
from pessoa_fisica 
order by id;" > pessoas

order by id) To '/home/minastirith/pessoas' With CSV DELIMITER ',';

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')


-- Comando console de load

load "db/seeds_migracao/seeds_pessoas.rb"

=end

# Alimenta tabela de Departamentos com as instituicoes Ex: Insituto Federald e Brasília
puts 'Inserindo Pessoas'
Person.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('people_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('people_id_seq', (select max(id) from people), true);")