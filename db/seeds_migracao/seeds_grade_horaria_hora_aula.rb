=begin

-- Prepara vinculos
select  '{:timetable_id => Timetable.where(:matrix_id => '||grade_horario.matriz_curricular_id||').where(:day_week_id => '||dia_semana_id||').first.id, :class_time_id => ClassTime.where(:started_at => '''||horario_inicio||''').where(:ended_at => '''||horario_fim||''').first.id},'
from grade_horario_horario_aula, grade_horario, horario_aula 
where grade_horario.id  = grade_horario_horario_aula.grade_horario_id 
and grade_horario.matriz_curricular_id is not null
and horario_aula.id = grade_horario_horario_aula.horario_aula_id
order by grade_horario.matriz_curricular_id, dia_semana_id, horario_inicio, horario_fim;
--1410 registros


-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select  '{:timetable_id => Timetable.where(:matrix_id => '||grade_horario.matriz_curricular_id||').where(:day_week_id => '||dia_semana_id||').first.id, :class_time_id => ClassTime.where(:started_at => '''||horario_inicio||''').where(:ended_at => '''||horario_fim||''').first.id},'
from grade_horario_horario_aula, grade_horario, horario_aula 
where grade_horario.id  = grade_horario_horario_aula.grade_horario_id 
and grade_horario.matriz_curricular_id is not null
and horario_aula.id = grade_horario_horario_aula.horario_aula_id
order by grade_horario.matriz_curricular_id, dia_semana_id, horario_inicio, horario_fim;
" > grade_horaria_hora_aula


=end

# Alimenta tabela de horas da grade horária
TimetableClassTime.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('timetable_class_time_id_seq', 1, false);")

timetable_class_time = TimetableClassTime.create([
  ## Colar o código aqui

])