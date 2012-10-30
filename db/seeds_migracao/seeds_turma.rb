=begin

-- Prepara vinculos
select ('turma = SchoolClass.new({:identifier => '''||ARRAY_TO_STRING(ARRAY[identificador],'')||''', 
                                    :class_season_id => '||ARRAY_TO_STRING(ARRAY[periodo_letivo_id],'')||', 
                                    :matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],'')||''', 
                                    :period => '''||ARRAY_TO_STRING(ARRAY[periodo],'')||''', 
                                    :shift_type_id => '''||ARRAY_TO_STRING(ARRAY[turno_id],'')||''', 
                                    :opening_at => '''||ARRAY_TO_STRING(ARRAY[data_abertura],' ')||''', 
                                    :closing_at => '''||ARRAY_TO_STRING(ARRAY[data_fechamento],' ')||''' })
turma.id = '||id||'
turma.save(:validate => false)
') as comando from turma;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('turma = SchoolClass.new({:identifier => '''||ARRAY_TO_STRING(ARRAY[identificador],'')||''', 
                                    :class_season_id => '||ARRAY_TO_STRING(ARRAY[periodo_letivo_id],'')||', 
                                    :matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],'')||''', 
                                    :period => '''||ARRAY_TO_STRING(ARRAY[periodo],'')||''', 
                                    :shift_type_id => '''||ARRAY_TO_STRING(ARRAY[turno_id],'')||''', 
                                    :opening_at => '''||ARRAY_TO_STRING(ARRAY[data_abertura],' ')||''', 
                                    :closing_at => '''||ARRAY_TO_STRING(ARRAY[data_fechamento],' ')||''' })
turma.id = '||id||'
turma.save(:validate => false)
') as comando from turma;" > turma

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')

-- Comando console de load

load "db/seeds_migracao/seeds_turma.rb"

=end

# Alimenta tabela de Turmas
SchoolClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('school_classes_id_seq', 1, false);")

## Colar o código aqui

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('school_classes_id_seq', (select max(id) from school_classes), true);")