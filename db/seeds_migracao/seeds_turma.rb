=begin

-- Prepara vinculos
select ('turma = SchoolClass.new({:identifier => \''||identificador||'\', 
                                    :class_season_id => '||periodo_letivo_id||', 
                                    :matrix_id => \''||matriz_curricular_id||'\', 
                                    :period => \''||coalesce(periodo,'0')||'\', 
                                    :shift_type_id => '||coalesce(turno_id,0)||', 
                                    :opening_at => \''||coalesce(data_abertura,'01/01/1900')||'\', 
                                    :closing_at => \''||coalesce(data_fechamento,'01/01/2050')||'\' })
turma.id = '||id||'
turma.save!
') as comando from turma;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('turma = SchoolClass.new({:identifier => \''||identificador||'\', :class_season_id => '||periodo_letivo_id||', :matrix_id => \''||matriz_curricular_id||'\', :period => \''||coalesce(periodo,'0')||'\', :shift_type_id => '||coalesce(turno_id,0)||', :opening_at => \''||coalesce(data_abertura,'01/01/1900')||'\', :closing_at => \''||coalesce(data_fechamento,'01/01/2050')||'\' })
turma.id = '||id||'
turma.save!
') as comando from turma;" > turma


=end

# Alimenta tabela de Turmas
SchoolClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('school_classes_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('school_classes_id_seq', (select max(id) from school_classes), true);")