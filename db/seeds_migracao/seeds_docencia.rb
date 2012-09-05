=begin

-- Prepara vinculos
select ('{:discipline_class_id => '||classe_id||',:person_id => '||vinculo.funcionario_id||',:dept_id => '||ambiente_aprendizagem.unidade_organizacional_id||'}, )') as comando 
from docencia, docente, vinculo,ambiente_aprendizagem
where docencia.docente_id = docente.vinculo_id
and docente.vinculo_id = vinculo.id
and docencia.ambiente_aprendizagem_id = ambiente_aprendizagem.id;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('{:discipline_class_id => '||classe_id||',:person_id => '||vinculo.funcionario_id||',:dept_id => '||ambiente_aprendizagem.unidade_organizacional_id||'}, )') as comando 
from docencia, docente, vinculo,ambiente_aprendizagem
where docencia.docente_id = docente.vinculo_id
and docente.vinculo_id = vinculo.id
and docencia.ambiente_aprendizagem_id = ambiente_aprendizagem.id;" > docencia






=end


# Alimenta tabela de Docencia
ClassTeaching.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('class_teachings_id_seq', 1, false);")

docencia = ClassTeaching.create([
  ## Colar o código aqui

])