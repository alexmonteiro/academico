# Alimenta tabela de Matrizes
=begin
-- Select de Instituicoes
select ('
matriz = Matrix.new(
         {:started_at => \''||data_inicio||'\', 
          :ended_at => \''||coalesce(data_fim, '01/01/2050')||'\', 
          :maxdisciplines => \''||numero_maximo_elemento_acursar||'\',  
          :course_id => \''||curso_id||'\', 
          :matrix_evaluation_type_id => \''||forma_avaliacao_id||'\',   
          :matrix_status_id => \''||situacao_matriz_curricular_id||'\',
          :maxseasons => \''||numero_periodos||'\',  
          :class_season_type_id => '||tipo_periodo_matriz_curricular_id||'
         })
matriz.id = '||id||'
matriz.save!         
       ') as comando
from matriz_curricular
order by matriz_curricular.id;

-- Comando reduzido

select ('matriz = Matrix.new({:started_at => \''||data_inicio||'\', :ended_at => \''||coalesce(data_fim, '01/01/2050')||'\', :maxdisciplines => \''||numero_maximo_elemento_acursar||'\', :course_id => \''||curso_id||'\', :matrix_evaluation_type_id => \''||forma_avaliacao_id||'\', :matrix_status_id => \''||situacao_matriz_curricular_id||'\', :maxseasons => \''||numero_periodos||'\', :class_season_type_id => '||tipo_periodo_matriz_curricular_id||'})
matriz.id = '||id||'
matriz.save! ') as comando
from matriz_curricular
order by matriz_curricular.id;


=end

Matrix.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('matrices_id_seq', 1, false);")

## Colar o código aqui



#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('matrices_id_seq', (select max(id) from matrices), true);")