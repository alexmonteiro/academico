# Alimenta tabela de Cursos
=begin
-- Select de Instituicoes
select ('
curso = Course.new(
         {:code => \''||codigo||'\', 
          :name => \''||curso.nome||'\', 
          :nickname => \''||nome_reduzido||'\',  
          :goal => \''||finalidade||'\', 
          :mintime => \''||tempo_minimo||'\',   
          :maxtime => \''||tempo_maximo||'\',         
          :started_at => \''||coalesce(curso.data_inicio, '01/01/1900')||'\',  
          :ended_at => \''||coalesce(curso.data_fim, '01/01/2050')||'\',  
          :dept_id => '||unidade_organizacional_id||'
         })
curso.id = '||curso.id||'
curso.save!         
       ') as comando
from curso, elemento_organizacional 
where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;

-- Comando reduzido
select ('curso = Course.new({:code => \''||codigo||'\', :name => \''||curso.nome||'\', :nickname => \''||nome_reduzido||'\',  :goal => \''||finalidade||'\', :mintime => \''||tempo_minimo||'\', :maxtime => \''||tempo_maximo||'\', :started_at => \''||coalesce(curso.data_inicio, '01/01/1900')||'\', :ended_at => \''||coalesce(curso.data_fim, '01/01/2050')||'\', :dept_id => '||unidade_organizacional_id||' })
curso.id = '||curso.id||'
curso.save! ') as comando from curso, elemento_organizacional  where curso.unidade_organizacional_id = elemento_organizacional.id order by 1;

=end
Course.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('courses_id_seq', 1, false);")

## Colar o código aqui

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('courses_id_seq', (select max(id) from courses), true);")