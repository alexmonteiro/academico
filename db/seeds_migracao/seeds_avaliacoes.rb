=begin

-- Prepara avaliacoes
select ('
exam = DisciplineClassExam.new(
         {:applied_at => '''||ARRAY_TO_STRING(ARRAY[data_avaliacao],' ')||''', 
          :title => '''||ARRAY_TO_STRING(ARRAY[descricao],' ')||''', 
          :weight => '''||ARRAY_TO_STRING(ARRAY[peso],' ')||''',  
          :real_value => '''||ARRAY_TO_STRING(ARRAY[valor],' ')||''', 
          :discipline_class_id => '''||ARRAY_TO_STRING(ARRAY[classe_id],' ')||''',   
          :discipline_class_exam_type_id => '''||ARRAY_TO_STRING(ARRAY[tipo_avaliacao_id],'')||''',
          :is_mandatory => '''||ARRAY_TO_STRING(ARRAY[obrigatoria],'')||'''
         })
exam.id = '||id||'
exam.save!         
       ') as comando
from avaliacao
order by avaliacao.id;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('
exam = DisciplineClassExam.new(
         {:applied_at => '''||ARRAY_TO_STRING(ARRAY[data_avaliacao],' ')||''', 
          :title => '''||ARRAY_TO_STRING(ARRAY[descricao],' ')||''', 
          :weight => '''||ARRAY_TO_STRING(ARRAY[peso],' ')||''',  
          :real_value => '''||ARRAY_TO_STRING(ARRAY[valor],' ')||''', 
          :discipline_class_id => '''||ARRAY_TO_STRING(ARRAY[classe_id],' ')||''',   
          :discipline_class_exam_type_id => '''||ARRAY_TO_STRING(ARRAY[tipo_avaliacao_id],'')||''',
          :is_mandatory => '''||ARRAY_TO_STRING(ARRAY[obrigatoria],'')||'''
         })
exam.id = '||id||'
exam.save!         
       ') as comando
from avaliacao
order by avaliacao.id;" > avaliacoes

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')


-- Comando console de load

load "db/seeds_migracao/seeds_avaliacoes.rb"

=end

# Alimenta tabela de Turmas
DisciplineClassExam.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_class_exams_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_class_exams_id_seq', (select max(id) from discipline_class_exams), true);")