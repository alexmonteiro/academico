=begin

-- Prepara vinculos
select ('{:registration_id => '''||ARRAY_TO_STRING(ARRAY[matricula_id],'')||''', 
          :discipline_class_id => '''||ARRAY_TO_STRING(ARRAY[classe_id],'')||''',
          :registered_at => '''||ARRAY_TO_STRING(ARRAY[data_vinculo],'')||''',
          :registration_class_status_id => '''||ARRAY_TO_STRING(ARRAY[status_aluno_classe_id],'')||'''},
') as comando from enturmacao;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('{:registration_id => '''||ARRAY_TO_STRING(ARRAY[matricula_id],'')||''', 
          :discipline_class_id => '''||ARRAY_TO_STRING(ARRAY[classe_id],'')||''',
          :registered_at => '''||ARRAY_TO_STRING(ARRAY[data_vinculo],'')||''',
          :registration_class_status_id => '''||ARRAY_TO_STRING(ARRAY[status_aluno_classe_id],'')||'''},
') as comando from enturmacao;" > eturmacoes

-- Comando console de load

load "db/seeds_migracao/seeds_enturmacao.rb"

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')

=end

# Alimenta tabela de Enturmaca -> RegistrationClasses
RegistrationClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('registration_classes_id_seq', 1, false);")

RegistrationClass.create([])
## Colar o código aqui
