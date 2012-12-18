# Alimenta tabela de  Disciplinas das Matrizes
=begin
-- Select de Instituicoes
select ('{:matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],'')||''', 
          :discipline_id => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular_id],'')||''', 
          :matrix_discipline_group_id => '''||ARRAY_TO_STRING(ARRAY[grupo_curricular_id],'')||''',  
          :maxseasons => '''||ARRAY_TO_STRING(ARRAY[periodo_curricular],'')||''', 
          :isoptative => '''||ARRAY_TO_STRING(ARRAY[optativo],'')||''',   
          :isdependence => '''||ARRAY_TO_STRING(ARRAY[dependencia],'')||'''
         },
       ') as comando
from elemento_matriz;

-- Comando reduzido
psql -U postgres -h localhost -d dbsiga-edu -c "select ('{:matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],'')||''', 
          :discipline_id => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular_id],'')||''', 
          :matrix_discipline_group_id => '''||ARRAY_TO_STRING(ARRAY[grupo_curricular_id],'')||''',  
          :maxseasons => '''||ARRAY_TO_STRING(ARRAY[periodo_curricular],'')||''', 
          :isoptative => '''||ARRAY_TO_STRING(ARRAY[optativo],'')||''',   
          :isdependence => '''||ARRAY_TO_STRING(ARRAY[dependencia],'')||'''
         },
       ') as comando
from elemento_matriz;" > matriz_disciplinas

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')

load "db/seeds_migracao/seeds_matrizes_disciplinas.rb"

=end

MatrixDiscipline.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('matrix_disciplines_id_seq', 1, false);")

## Colar o código aqui

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('matrix_disciplines_id_seq', (select max(id) from matrix_disciplines), true);")