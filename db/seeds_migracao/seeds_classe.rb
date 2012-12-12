=begin

-- Prepara vinculos
select ('classe = DisciplineClass.new({:school_class_id => '''||ARRAY_TO_STRING(ARRAY[turma_id],' ')||''', 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => '||matriz_id||', :discipline_id => '||disciplina_id||').first.id,
                                    :code => '''||ARRAY_TO_STRING(ARRAY[descricao],' ')||''',
                                    :vancancies => '''||ARRAY_TO_STRING(ARRAY[numero_vagas],' ')||''', 
                                    :ending_at => '''||ARRAY_TO_STRING(ARRAY[data_fechamento_letivo],' ')||''', 
                                    :started_at => '''||ARRAY_TO_STRING(ARRAY[data_abertura],' ')||''', 
                                    :timetable_started_at => '''||ARRAY_TO_STRING(ARRAY[data_inicio_vigencia_grade_horaria],' ')||''' })
classe.id = '||id||'
classe.save!(:validate => false)
') as comando from classe;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('classe = DisciplineClass.new({:school_class_id => '''||ARRAY_TO_STRING(ARRAY[turma_id],' ')||''', 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => '||matriz_id||', :discipline_id => '||disciplina_id||').first.id,
                                    :code => '''||ARRAY_TO_STRING(ARRAY[descricao],' ')||''',
                                    :vancancies => '''||ARRAY_TO_STRING(ARRAY[numero_vagas],' ')||''', 
                                    :ending_at => '''||ARRAY_TO_STRING(ARRAY[data_fechamento_letivo],' ')||''', 
                                    :started_at => '''||ARRAY_TO_STRING(ARRAY[data_abertura],' ')||''', 
                                    :timetable_started_at => '''||ARRAY_TO_STRING(ARRAY[data_inicio_vigencia_grade_horaria],' ')||''' })
classe.id = '||id||'
classe.save!(:validate => false)
') as comando from classe;" > classe


-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],' ')

-- Comando console de load

load "db/seeds_migracao/seeds_classe.rb"
=end


# Alimenta tabela de Classes
DisciplineClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_classes_id_seq', 1, false);")


## Colar o código aqui



#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_classes_id_seq', (select max(id) from discipline_classes), true);")