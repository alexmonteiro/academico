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

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-02', :end_at => '2010-12-15', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 2
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-02', :end_at => '2010-12-24', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 3
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 1, :start_at => '2010-05-24', :end_at => '2010-07-08', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 6
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 1, :start_at => '2010-05-24', :end_at => '2010-07-08', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 7
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-09', :end_at => '2010-12-17', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 12
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 1, :start_at => '2010-03-01', :end_at => '2010-07-06', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 17
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-02', :end_at => '2010-12-17', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 19
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-16', :end_at => '2010-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 22
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-07-27', :end_at => '2010-12-10', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 32
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 4, :start_at => '2010-10-14', :end_at => '2010-11-25', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 37
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-01-10', :end_at => '2012-01-10', :class_season_type_id => 2, :dept_id => 0 })
periodo.id = 44
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-14', :end_at => '2012-12-21', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 47
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-03-14', :end_at => '2011-03-21', :class_season_type_id => 6, :dept_id => 0 })
periodo.id = 48
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 4, :start_at => '2010-09-28', :end_at => '2010-12-16', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 36
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-09-08', :end_at => '2010-12-19', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 21
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 4, :start_at => '2010-10-13', :end_at => '2010-12-15', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 34
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-07', :end_at => '2011-07-05', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 46
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-14', :end_at => '2011-06-22', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 49
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-14', :end_at => '2011-07-06', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 50
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-14', :end_at => '2011-07-08', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 51
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-04-04', :end_at => '2011-06-27', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 52
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 3, :start_at => '2011-03-14', :end_at => '2011-07-06', :class_season_type_id => 6, :dept_id => 0 })
periodo.id = 53
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-04-25', :end_at => '2011-07-07', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 54
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-02', :end_at => '2011-12-23', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 55
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-08-03', :end_at => '2011-12-10', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 56
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-04-04', :end_at => '2011-06-29', :class_season_type_id => 6, :dept_id => 0 })
periodo.id = 58
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-02', :end_at => '2010-12-22', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 64
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-07', :end_at => '2011-07-08', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 65
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-09-27', :end_at => '2011-11-29', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 69
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-08-15', :end_at => '2011-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 72
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-15', :end_at => '2011-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 73
periodo.save!

periodo = ClassSeason.new({:year => 2010, :number => 2, :start_at => '2010-08-02', :end_at => '2010-12-16', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 74
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-09', :end_at => '2011-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 71
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-09-05', :end_at => '2011-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 75
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-09-05', :end_at => '2011-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 76
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-07-27', :end_at => '2011-12-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 77
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-07-27', :end_at => '2011-12-21', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 78
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-09-12', :end_at => '2011-12-14', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 79
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-09-26', :end_at => '2011-12-23', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 67
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-03', :end_at => '2012-03-09', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 57
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-09', :end_at => '2011-12-06', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 80
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-15', :end_at => '2012-03-09', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 68
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-08-02', :end_at => '2012-03-15', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 66
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-10-24', :end_at => '2011-12-20', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 81
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-10-24', :end_at => '2011-12-20', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 82
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-10-10', :end_at => '2011-12-16', :class_season_type_id => 3, :dept_id => 0 })
periodo.id = 85
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-10-22', :end_at => '2012-06-30', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 86
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 2, :start_at => '2011-07-27', :end_at => '2012-03-20', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 59
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-01-09', :end_at => '2012-02-01', :class_season_type_id => 5, :dept_id => 0 })
periodo.id = 88
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-02-06', :end_at => '2012-06-30', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 89
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-08-31', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 90
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-02-13', :end_at => '2012-07-13', :class_season_type_id => 1, :dept_id => 0 })
periodo.id = 87
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-02-07', :end_at => '2012-03-30', :class_season_type_id => 2, :dept_id => 0 })
periodo.id = 45
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-01-16', :end_at => '2012-03-15', :class_season_type_id => 6, :dept_id => 9 })
periodo.id = 91
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-01-17', :end_at => '2012-03-15', :class_season_type_id => 6, :dept_id => 9 })
periodo.id = 92
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-27', :end_at => '2012-07-30', :class_season_type_id => 1, :dept_id => 7 })
periodo.id = 100
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-27', :end_at => '2012-07-29', :class_season_type_id => 1, :dept_id => 7 })
periodo.id = 101
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-07-29', :class_season_type_id => 1, :dept_id => 7 })
periodo.id = 102
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-02-06', :end_at => '2012-07-04', :class_season_type_id => 1, :dept_id => 36 })
periodo.id = 104
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-07-28', :class_season_type_id => 1, :dept_id => 6 })
periodo.id = 106
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-07-28', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 107
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-12-12', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 108
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-27', :end_at => '2012-10-18', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 109
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-07-31', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 110
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-02-06', :end_at => '2012-12-20', :class_season_type_id => 1, :dept_id => 8 })
periodo.id = 111
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-04-09', :end_at => '2012-08-30', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 114
periodo.save!

periodo = ClassSeason.new({:year => 2011, :number => 1, :start_at => '2011-11-08', :end_at => '2012-03-08', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 115
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-20', :end_at => '2012-07-31', :class_season_type_id => 1, :dept_id => 33 })
periodo.id = 116
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-26', :end_at => '2012-07-20', :class_season_type_id => 1, :dept_id => 28 })
periodo.id = 105
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-02-13', :end_at => '2012-07-06', :class_season_type_id => 1, :dept_id => 28 })
periodo.id = 112
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 2, :start_at => '2012-07-25', :end_at => '2012-12-19', :class_season_type_id => 1, :dept_id => 28 })
periodo.id = 117
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-20', :end_at => '2012-07-27', :class_season_type_id => 1, :dept_id => 33 })
periodo.id = 113
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-03-20', :end_at => '2012-07-20', :class_season_type_id => 1, :dept_id => 33 })
periodo.id = 119
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 2, :start_at => '2012-08-13', :end_at => '2012-12-19', :class_season_type_id => 1, :dept_id => 9 })
periodo.id = 121
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 9, :start_at => '2012-09-01', :end_at => '2012-09-30', :class_season_type_id => 5, :dept_id => 7 })
periodo.id = 122
periodo.save!

periodo = ClassSeason.new({:year => 2012, :number => 1, :start_at => '2012-06-11', :end_at => '2013-12-20', :class_season_type_id => 6, :dept_id => 9 })
periodo.id = 120
periodo.save!

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('class_seasons_id_seq', (select max(id) from class_seasons), true);")
