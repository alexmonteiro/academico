# Alimenta tabela de Cursos
# => Course(id: integer, code: string, name: string, nickname: string, goal: string, 
#           maxtime: integer, mintime: integer, started_at: date, ended_at: date, 
#           dept_id: integer, registration_scheme_id: integer, class_season_type_id: integer, 
#           learning_modality_id: integer, knowledge_area_id: integer, techaxes_id: integer, 
#           education_modality_id: integer, created_at: datetime, updated_at: datetime)
#
#
=begin
-- Select de Instituicoes
select ('
curso = Course.new(
         {:code => '''||ARRAY_TO_STRING(ARRAY[codigo],' ')||''', 
          :name => '''||ARRAY_TO_STRING(ARRAY[curso.nome],' ')||''', 
          :nickname => '''||ARRAY_TO_STRING(ARRAY[nome_reduzido],' ')||''',      
          :goal => '''||ARRAY_TO_STRING(ARRAY[finalidade],' ')||''', 
          :mintime => '''||ARRAY_TO_STRING(ARRAY[tempo_minimo],' ')||''',   
          :maxtime => '''||ARRAY_TO_STRING(ARRAY[tempo_maximo],' ')||''',         
          :started_at => '''||ARRAY_TO_STRING(ARRAY[curso.data_inicio],' ')||''',  
          :ended_at => '''||ARRAY_TO_STRING(ARRAY[curso.data_fim],' ')||''',  
          :dept_id => '''||ARRAY_TO_STRING(ARRAY[unidade_organizacional_id],' ')||''',
          :knowledge_area_id => '''||ARRAY_TO_STRING(ARRAY[area_conhecimento_cnpq_id],' ')||''',
          :techaxes_id => '''||ARRAY_TO_STRING(ARRAY[eixo_tecnologico_id],' ')||''',
          :learning_modality_id => '''||ARRAY_TO_STRING(ARRAY[modalidade_aprendizagem_id],' ')||''', 
          :education_modality_id => '''||ARRAY_TO_STRING(ARRAY[modalidade_ensino_id],' ')||''',
          :class_season_type_id => '''||ARRAY_TO_STRING(ARRAY[periodicidade_ingresso_id],' ')||''',
          :registration_scheme_id => '''||ARRAY_TO_STRING(ARRAY[regime_matricula_id],' ')||''',
          :course_status_id => '''||ARRAY_TO_STRING(ARRAY[situacao_id],' ')||''',                                                                      
         })
curso.id = '||curso.id||'
curso.save!         
       ') as comando
from curso, elemento_organizacional 
where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;

-- Comando reduzido
select ('curso = Course.new({:code => '''||ARRAY_TO_STRING(ARRAY[codigo],' ')||''', :name => '''||ARRAY_TO_STRING(ARRAY[curso.nome],' ')||''', :nickname => '''||ARRAY_TO_STRING(ARRAY[nome_reduzido],' ')||''', :goal => '''||ARRAY_TO_STRING(ARRAY[finalidade],' ')||''', :mintime => '''||ARRAY_TO_STRING(ARRAY[tempo_minimo],' ')||''', :maxtime => '''||ARRAY_TO_STRING(ARRAY[tempo_maximo],' ')||''', :started_at => '''||ARRAY_TO_STRING(ARRAY[curso.data_inicio],' ')||''', :ended_at => '''||ARRAY_TO_STRING(ARRAY[curso.data_fim],' ')||''', :dept_id => '''||ARRAY_TO_STRING(ARRAY[unidade_organizacional_id],' ')||''', :knowledge_area_id => '''||ARRAY_TO_STRING(ARRAY[area_conhecimento_cnpq_id],' ')||''', :techaxes_id => '''||ARRAY_TO_STRING(ARRAY[eixo_tecnologico_id],' ')||''', :learning_modality_id => '''||ARRAY_TO_STRING(ARRAY[modalidade_aprendizagem_id],' ')||''', :education_modality_id => '''||ARRAY_TO_STRING(ARRAY[modalidade_ensino_id],' ')||''', :class_season_type_id => '''||ARRAY_TO_STRING(ARRAY[periodicidade_ingresso_id],' ')||''', :registration_scheme_id => '''||ARRAY_TO_STRING(ARRAY[regime_matricula_id],' ')||''', :course_status_id => '''||ARRAY_TO_STRING(ARRAY[situacao_id],' ')||''',})
curso.id = '||curso.id||'
curso.save! ') as comando
from curso, elemento_organizacional 
where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;

-- Comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('curso = Course.new({:code => '''||ARRAY_TO_STRING(ARRAY[codigo],' ')||''', :name => '''||ARRAY_TO_STRING(ARRAY[curso.nome],' ')||''', :nickname => '''||ARRAY_TO_STRING(ARRAY[nome_reduzido],' ')||''', :goal => '''||ARRAY_TO_STRING(ARRAY[finalidade],' ')||''', :mintime => '''||ARRAY_TO_STRING(ARRAY[tempo_minimo],' ')||''', :maxtime => '''||ARRAY_TO_STRING(ARRAY[tempo_maximo],' ')||''', :started_at => '''||ARRAY_TO_STRING(ARRAY[curso.data_inicio],' ')||''', :ended_at => '''||ARRAY_TO_STRING(ARRAY[curso.data_fim],' ')||''', :dept_id => '''||ARRAY_TO_STRING(ARRAY[unidade_organizacional_id],' ')||''', :knowledge_area_id => '''||ARRAY_TO_STRING(ARRAY[area_conhecimento_cnpq_id],' ')||''', :techaxes_id => '''||ARRAY_TO_STRING(ARRAY[eixo_tecnologico_id],' ')||''', :learning_modality_id => '''||ARRAY_TO_STRING(ARRAY[modalidade_aprendizagem_id],' ')||''', :education_modality_id => '''||ARRAY_TO_STRING(ARRAY[modalidade_ensino_id],' ')||''', :class_season_type_id => '''||ARRAY_TO_STRING(ARRAY[periodicidade_ingresso_id],' ')||''', :registration_scheme_id => '''||ARRAY_TO_STRING(ARRAY[regime_matricula_id],' ')||''', :course_status_id => '''||ARRAY_TO_STRING(ARRAY[situacao_id],' ')||''',})
curso.id = '||curso.id||'
curso.save! ') as comando
from curso, elemento_organizacional 
where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;" > cursos


-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],' ')



=end
Course.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('courses_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('courses_id_seq', (select max(id) from courses), true);")