=begin

-- Prepara vinculos
select ('classe = DisciplineClass.new({:school_class_id => '||turma_id||', 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => '||matriz_id||', :discipline_id => '||disciplina_id||').first.id,
                                    :code => \''||descricao||'\',
                                    :vancancies => \''||numero_vagas||'\', 
                                    :ending_at => \''||coalesce(data_fechamento_letivo,'01/01/2050')||'\', 
                                    :started_at => \''||coalesce(data_abertura,'01/01/1900')||'\', 
                                    :timetable_started_at => \''||coalesce(data_inicio_vigencia_grade_horaria,'01/01/1900')||'\' })
classe.id = '||id||'
classe.save!
') as comando from classe;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('classe = DisciplineClass.new({:school_class_id => '||turma_id||', 
                                    :matrix_discipline_id => MatrixDiscipline.where(:matrix_id => '||matriz_id||', :discipline_id => '||disciplina_id||').first.id,
                                    :code => \''||descricao||'\',
                                    :vancancies => \''||numero_vagas||'\', 
                                    :ending_at => \''||coalesce(data_fechamento_letivo,'01/01/2050')||'\', 
                                    :started_at => \''||coalesce(data_abertura,'01/01/1900')||'\', 
                                    :timetable_started_at => \''||coalesce(data_inicio_vigencia_grade_horaria,'01/01/1900')||'\' })
classe.id = '||id||'
classe.save!
') as comando from classe;" > classe





=end


# Alimenta tabela de Classes
DisciplineClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_classes_id_seq', 1, false);")


## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('discipline_classes_id_seq', (select max(id) from discipline_classes), true);")