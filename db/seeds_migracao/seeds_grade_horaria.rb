=begin

-- Prepara vinculos
select distinct ('{:matrix_id => '||matriz_curricular_id||', :day_week_id => '||dia_semana_id||'},') as comando from grade_horario where dia_semana_id is not null and  matriz_curricular_id is not null;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select distinct ('{:matrix_id => '||matriz_curricular_id||', :day_week_id => '||dia_semana_id||'},') as comando from grade_horario where dia_semana_id is not null and  matriz_curricular_id is not null;" > grade_horaria


=end

# Alimenta tabela de Grade Horária
Timetable.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('timetables_id_seq', 1, false);")

timetable = Timetable.create([
  ## Colar o código aqui
  
])