=begin
select ('
discipline = Discipline.new(
         {:name => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular.nome],' ')||''', 
         :code => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular.codigo],' ')||''', 
         :description => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular.descricao],' ')||''',
         :goals => '''||ARRAY_TO_STRING(ARRAY[objetivos],' ')||''', 
         :workload => '''||ARRAY_TO_STRING(ARRAY[carga_horaria],' ')||''',   
         :credits => '''||ARRAY_TO_STRING(ARRAY[credito],' ')||''',    
         :discipline_type_id => DisciplineType.find_by_description('''||ARRAY_TO_STRING(ARRAY[tipo_elemento_curricular],' ')||''').id,   
         :course_id => '||curso_id||'
         })
discipline.id = '||elemento_curricular.id||'
discipline.save!   
       ') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;

--comando reduzido


-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "
select ('
discipline = Discipline.new(
         {:name => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular.nome],' ')||''', 
         :code => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular.codigo],' ')||''', 
         :description => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular.descricao],' ')||''',
         :goals => '''||ARRAY_TO_STRING(ARRAY[objetivos],' ')||''', 
         :workload => '''||ARRAY_TO_STRING(ARRAY[carga_horaria],' ')||''',   
         :credits => '''||ARRAY_TO_STRING(ARRAY[credito],' ')||''',    
         :discipline_type_id => DisciplineType.find_by_description('''||ARRAY_TO_STRING(ARRAY[tipo_elemento_curricular],' ')||''').id,   
         :course_id => '||curso_id||'
         })
discipline.id = '||elemento_curricular.id||'
discipline.save!   
       ') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;
" > disciplinas

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],' ')


-- Comando console de load

load "db/seeds_migracao/seeds_disciplinas.rb"


=end

Discipline.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('disciplines_id_seq', 1, false);")

   
## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('disciplines_id_seq', (select max(id) from disciplines), true);")