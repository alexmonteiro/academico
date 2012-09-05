=begin
select :=>\ =>\''||||'\', :=>\''||||'\', :=>\''||||'\',   :dept=>Dept.find_by_name(\''||elemento_organizacional.nome||'\') },'  
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by 1;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "" > disciplinas.txt

select ('
discipline = Discipline.new(
         {:name => \''||elemento_curricular.nome||'\', 
         :code => \''||elemento_curricular.codigo||'\', 
         :description => \''||elemento_curricular.descricao||'\',
         :goals => \''||objetivos||'\', 
         :workload => \''||carga_horaria||'\',   
         :credits => '||coalesce(credito,0)||',    
         :discipline_type_id => DisciplineType.find_by_description(\''||tipo_elemento_curricular||'\').id,   
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

select ('discipline = Discipline.new({:name => \''||elemento_curricular.nome||'\', :code => \''||elemento_curricular.codigo||'\', :description => \''||elemento_curricular.descricao||'\', :goals => \''||objetivos||'\', :workload => \''||carga_horaria||'\', :credits => '||coalesce(credito,0)||', :discipline_type_id => DisciplineType.find_by_description(\''||tipo_elemento_curricular||'\').id, :course_id => '||curso_id||', :dept_id => '||elemento_curricular.elemento_organizacional_id||'})
discipline.id = '||elemento_curricular.id||'
discipline.save!') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;


psql -U postgres -h localhost -d dbsiga-edu -c "select ('
discipline = Discipline.new(
         {:name => \''||elemento_curricular.nome||'\', 
         :code => \''||elemento_curricular.codigo||'\', 
         :description => \''||elemento_curricular.descricao||'\',
         :goals => \''||objetivos||'\', 
         :workload => \''||carga_horaria||'\',   
         :credits => '||coalesce(credito,0)||',    
         :discipline_type_id => DisciplineType.find_by_description(\''||tipo_elemento_curricular||'\').id,   
         :course_id => '||curso_id||'
         })
discipline.id = '||elemento_curricular.id||'
discipline.save!         
       ') as comando
from elemento_curricular, curso, elemento_organizacional
where elemento_curricular.curso_id = curso.id
and elemento_curricular.elemento_organizacional_id = elemento_organizacional.id 
order by elemento_curricular.id;" > seed_disciplinas


=end

Discipline.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('disciplines_id_seq', 1, false);")


## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('disciplines_id_seq', (select max(id) from disciplines), true);")