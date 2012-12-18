=begin

-- Prepara avaliacoes
select ('
result = DisciplineClassExamResult.new(
         {:concept => '''||ARRAY_TO_STRING(ARRAY[conceito],' ')||''', 
          :registration_class_id => RegistrationClass.where(:registration_id => '''||matricula_id||''').where(:discipline_class_id => '''||classe_id||''').first.id,
          :discipline_class_exam_id => '''||ARRAY_TO_STRING(ARRAY[avaliacao_id],' ')||''',  
          :result => '''||ARRAY_TO_STRING(ARRAY[nota],' ')||'''
         })
result.save!         
       ') as comando
from resultado_avaliacao
order by resultado_avaliacao.id;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('
result = DisciplineClassExamResult.new(
         {:concept => '''||ARRAY_TO_STRING(ARRAY[conceito],' ')||''', 
          :registration_class_id => RegistrationClass.where(:registration_id => '''||matricula_id||''').where(:discipline_class_id => '''||classe_id||''').first.id,
          :discipline_class_exam_id => '''||ARRAY_TO_STRING(ARRAY[avaliacao_id],' ')||''',  
          :result => '''||ARRAY_TO_STRING(ARRAY[nota],' ')||'''
         })
result.save!         
       ') as comando
from resultado_avaliacao
order by resultado_avaliacao.id;" > resultado_avaliacoes

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')


-- Comando console de load

load "db/seeds_migracao/seeds_avaliacoes_notas.rb"

=end

# Alimenta tabela de Turmas
DisciplineClassExamResult.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_class_exam_results_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence