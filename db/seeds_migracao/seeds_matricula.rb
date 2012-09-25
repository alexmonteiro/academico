=begin

-- Prepara vinculos
select ('registrations = Registration.new(:registration_at => '''||ARRAY_TO_STRING(ARRAY[data_matricula],' ')||''', 
                                    :course_matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],' ')||''', 
                                    :person_id => '''||ARRAY_TO_STRING(ARRAY[aluno_id],' ')||''', 
                                    :registration_number => '''||ARRAY_TO_STRING(ARRAY[numero],' ')||''', 
                                    :registration_status_id => '''||ARRAY_TO_STRING(ARRAY[status_aluno_curso_id],' ')||''')
registrations.id = '||id||'
registrations.save!
') as comando from matricula;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('registrations = Registration.new(:registration_at => '''||ARRAY_TO_STRING(ARRAY[data_matricula],' ')||''', 
                                    :course_matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],' ')||''', 
                                    :person_id => '''||ARRAY_TO_STRING(ARRAY[aluno_id],' ')||''', 
                                    :registration_number => '''||ARRAY_TO_STRING(ARRAY[numero],' ')||''', 
                                    :registration_status_id => '''||ARRAY_TO_STRING(ARRAY[status_aluno_curso_id],' ')||''')
registrations.id = '||id||'
registrations.save!
') as comando from matricula;" > matriculas


-- Comando console de load

load "db/seeds_migracao/seeds_matricula.rb"


=end

# Alimenta tabela de Turmas
Registration.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('registrations_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('registrations_id_seq', (select max(id) from registrations), true);")