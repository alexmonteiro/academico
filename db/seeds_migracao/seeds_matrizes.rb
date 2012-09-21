# Alimenta tabela de Matrizes
=begin
-- Select de Instituicoes
select ('
matriz = CourseMatrix.new(
         {:started_at => '''||ARRAY_TO_STRING(ARRAY[data_inicio],' ')||''', 
          :ended_at => '''||ARRAY_TO_STRING(ARRAY[data_fim],' ')||''', 
          :maxdisciplines => '''||ARRAY_TO_STRING(ARRAY[numero_maximo_elemento_acursar],' ')||''',  
          :course_id => '''||ARRAY_TO_STRING(ARRAY[curso_id],' ')||''', 
          :matrix_evaluation_type_id => '''||forma_avaliacao_id||''',   
          :matrix_status_id => '''||ARRAY_TO_STRING(ARRAY[forma_avaliacao_id],' ')||''',
          :maxseasons => '''||ARRAY_TO_STRING(ARRAY[numero_periodos],' ')||''',  
          :class_season_type_id => '||ARRAY_TO_STRING(ARRAY[tipo_periodo_matriz_curricular_id],' ')||'
         })
matriz.id = '||id||'
matriz.save!         
       ') as comando
from matriz_curricular
order by matriz_curricular.id;

-- Comando reduzido
select ('
matriz = CourseMatrix.new({:started_at => '''||ARRAY_TO_STRING(ARRAY[data_inicio],' ')||''', :ended_at => '''||ARRAY_TO_STRING(ARRAY[data_fim],' ')||''', :maxdisciplines => '''||ARRAY_TO_STRING(ARRAY[numero_maximo_elemento_acursar],' ')||''',  :course_id => '''||ARRAY_TO_STRING(ARRAY[curso_id],' ')||''', :matrix_evaluation_type_id => '''||forma_avaliacao_id||''',   :matrix_status_id => '''||ARRAY_TO_STRING(ARRAY[forma_avaliacao_id],' ')||''',:maxseasons => '''||ARRAY_TO_STRING(ARRAY[numero_periodos],' ')||''',  :class_season_type_id => '||ARRAY_TO_STRING(ARRAY[tipo_periodo_matriz_curricular_id],' ')||'})
matriz.id = '||id||'
matriz.save!         
       ') as comando
from matriz_curricular
order by matriz_curricular.id;

-- Comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('
matriz = CourseMatrix.new({:started_at => '''||ARRAY_TO_STRING(ARRAY[data_inicio],' ')||''', :ended_at => '''||ARRAY_TO_STRING(ARRAY[data_fim],' ')||''', :maxdisciplines => '''||ARRAY_TO_STRING(ARRAY[numero_maximo_elemento_acursar],' ')||''',  :course_id => '''||ARRAY_TO_STRING(ARRAY[curso_id],' ')||''', :matrix_evaluation_type_id => '''||forma_avaliacao_id||''',   :matrix_status_id => '''||ARRAY_TO_STRING(ARRAY[forma_avaliacao_id],' ')||''',:maxseasons => '''||ARRAY_TO_STRING(ARRAY[numero_periodos],' ')||''',  :class_season_type_id => '||ARRAY_TO_STRING(ARRAY[tipo_periodo_matriz_curricular_id],' ')||'})
matriz.id = '||id||'
matriz.save!         
       ') as comando
from matriz_curricular
order by matriz_curricular.id;" > matrizes


-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],' ')



=end

CourseMatrix.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('course_matrices_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('course_matrices_id_seq', (select max(id) from course_matrices), true);")