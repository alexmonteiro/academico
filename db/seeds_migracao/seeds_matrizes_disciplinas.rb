# Alimenta tabela de  Disciplinas das Matrizes
=begin
-- Select de Instituicoes
select ('{:matrix_id => '||matriz_curricular_id||', 
          :discipline_id => '||elemento_curricular_id||', 
          :matrix_discipline_group_id => '||grupo_curricular_id||',  
          :maxseasons => '||periodo_curricular||', 
          :isoptative => \''||optativo||'\',   
          :isdependence => \''||dependencia||'\'
         },
       ') as comando
from elemento_matriz;

-- Comando reduzido
psql -U postgres -h localhost -d dbsiga-edu -c "" > matriz_disciplinas

select ('{:matrix_id => '||matriz_curricular_id||', :discipline_id => '||elemento_curricular_id||',  :matrix_discipline_group_id => '||grupo_curricular_id||', :maxseasons => '||periodo_curricular||', :isoptative => \''||optativo||'\',  :isdependence => \''||dependencia||'\'},') as comando
from elemento_matriz;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('{:matrix_id => '||matriz_curricular_id||', :discipline_id => '||elemento_curricular_id||',  :matrix_discipline_group_id => '||grupo_curricular_id||', :maxseasons => '||periodo_curricular||', :isoptative => \''||optativo||'\',  :isdependence => \''||dependencia||'\'},') as comando
from elemento_matriz;" > matriz_disciplinas

=end

MatrixDiscipline.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('matrix_disciplines_id_seq', 1, false);")

MatrixDiscipline.create([
  ## Colar o código aqui
  
])

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('matrix_disciplines_id_seq', (select max(id) from matrix_disciplines), true);")