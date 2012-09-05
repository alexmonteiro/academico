=begin

-- Prepara vinculos
select ('periodo = ClassSeason.new({:year => '||ano||', :number => '||numero||', :start_at => \''||coalesce(data_inicio,'01/01/1900')||'\', :end_at => \''||coalesce(data_fim,'01/01/1900')||'\', :class_season_type_id => '||tipo_periodo_letivo_id||', :dept_id => '||coalesce(unidade_ensino_id,0)||' })
periodo.id = '||id||'
periodo.save!
') as comando from periodo_letivo;

psql -U postgres -h localhost -d dbsiga-edu -c "select ('periodo = ClassSeason.new({:year => '||ano||', :number => '||numero||', :start_at => \''||coalesce(data_inicio,'01/01/1900')||'\', :end_at => \''||coalesce(data_fim,'01/01/1900')||'\', :class_season_type_id => '||tipo_periodo_letivo_id||', :dept_id => '||coalesce(unidade_ensino_id,0)||' })
periodo.id = '||id||'
periodo.save!
') as comando from periodo_letivo;" > periodos

=end

# Alimenta tabela de Período Letivo
ClassSeason.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('class_seasons_id_seq', 1, false);")

## Colar o código aqui


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('class_seasons_id_seq', (select max(id) from class_seasons), true);")
