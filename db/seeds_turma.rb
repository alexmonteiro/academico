=begin

-- Prepara vinculos
select ('turma = SchoolClass.new({:identifier => \''||identificador||'\', 
                                    :class_season_id => '||periodo_letivo_id||', 
                                    :matrix_id => \''||matriz_curricular_id||'\', 
                                    :period => \''||coalesce(periodo,'0')||'\', 
                                    :shift_type_id => '||coalesce(turno_id,0)||', 
                                    :opening_at => \''||coalesce(data_abertura,'01/01/1900')||'\', 
                                    :closing_at => \''||coalesce(data_fechamento,'01/01/2050')||'\' })
turma.id = '||id||'
turma.save!
') as comando from turma;

-- comando shell
psql -U postgres -h localhost -d dbsiga-edu -c "select ('turma = SchoolClass.new({:identifier => \''||identificador||'\', :class_season_id => '||periodo_letivo_id||', :matrix_id => \''||matriz_curricular_id||'\', :period => \''||coalesce(periodo,'0')||'\', :shift_type_id => '||coalesce(turno_id,0)||', :opening_at => \''||coalesce(data_abertura,'01/01/1900')||'\', :closing_at => \''||coalesce(data_fechamento,'01/01/2050')||'\' })
turma.id = '||id||'
turma.save!
') as comando from turma;" > turma


=end

# Alimenta tabela de Turmas
SchoolClass.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('school_classes_id_seq', 1, false);")

turma = SchoolClass.new({:identifier => '2010421b', :class_season_id => 37, :matrix_id => '34', :period => '1', :shift_type_id => 0, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 42
turma.save!

turma = SchoolClass.new({:identifier => '2010411b', :class_season_id => 36, :matrix_id => '22', :period => '1', :shift_type_id => 0, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 44
turma.save!

turma = SchoolClass.new({:identifier => '2010421c', :class_season_id => 37, :matrix_id => '35', :period => '1', :shift_type_id => 0, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 45
turma.save!

turma = SchoolClass.new({:identifier => '2010211a', :class_season_id => 12, :matrix_id => '14', :period => '0', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 13
turma.save!

turma = SchoolClass.new({:identifier => '2010221b', :class_season_id => 21, :matrix_id => '20', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 22
turma.save!

turma = SchoolClass.new({:identifier => '2010221c', :class_season_id => 2, :matrix_id => '30', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 29
turma.save!

turma = SchoolClass.new({:identifier => '2010221d', :class_season_id => 2, :matrix_id => '30', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 30
turma.save!

turma = SchoolClass.new({:identifier => '2010231c', :class_season_id => 2, :matrix_id => '25', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 23
turma.save!

turma = SchoolClass.new({:identifier => '2010231d', :class_season_id => 2, :matrix_id => '27', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 25
turma.save!

turma = SchoolClass.new({:identifier => '2010231e', :class_season_id => 2, :matrix_id => '26', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 26
turma.save!

turma = SchoolClass.new({:identifier => '2010231f', :class_season_id => 2, :matrix_id => '29', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 27
turma.save!

turma = SchoolClass.new({:identifier => '2010231g', :class_season_id => 2, :matrix_id => '31', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 35
turma.save!

turma = SchoolClass.new({:identifier => '2010411a', :class_season_id => 36, :matrix_id => '21', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 43
turma.save!

turma = SchoolClass.new({:identifier => '2010421a', :class_season_id => 34, :matrix_id => '33', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 41
turma.save!

turma = SchoolClass.new({:identifier => '2011145101A', :class_season_id => 44, :matrix_id => '40', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 48
turma.save!

turma = SchoolClass.new({:identifier => '201118201A', :class_season_id => 46, :matrix_id => '14', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 49
turma.save!

turma = SchoolClass.new({:identifier => '2011147301A', :class_season_id => 45, :matrix_id => '41', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 53
turma.save!

turma = SchoolClass.new({:identifier => '2011149101A', :class_season_id => 46, :matrix_id => '43', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 54
turma.save!

turma = SchoolClass.new({:identifier => '2011149301A', :class_season_id => 46, :matrix_id => '43', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 55
turma.save!

turma = SchoolClass.new({:identifier => '2011150301A', :class_season_id => 46, :matrix_id => '44', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 56
turma.save!

turma = SchoolClass.new({:identifier => '2011117202A', :class_season_id => 46, :matrix_id => '20', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 57
turma.save!

turma = SchoolClass.new({:identifier => '2011151301A', :class_season_id => 46, :matrix_id => '46', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 58
turma.save!

turma = SchoolClass.new({:identifier => '201118102A', :class_season_id => 46, :matrix_id => '14', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 59
turma.save!

turma = SchoolClass.new({:identifier => '2011152201A', :class_season_id => 48, :matrix_id => '47', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 60
turma.save!

turma = SchoolClass.new({:identifier => '2011125301A', :class_season_id => 47, :matrix_id => '48', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 61
turma.save!

turma = SchoolClass.new({:identifier => '2011117201A', :class_season_id => 46, :matrix_id => '20', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 63
turma.save!

turma = SchoolClass.new({:identifier => '2011117201B', :class_season_id => 46, :matrix_id => '20', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 64
turma.save!

turma = SchoolClass.new({:identifier => '2011157101A', :class_season_id => 49, :matrix_id => '50', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 65
turma.save!

turma = SchoolClass.new({:identifier => '2011157301A', :class_season_id => 49, :matrix_id => '50', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 66
turma.save!

turma = SchoolClass.new({:identifier => '2011120101A', :class_season_id => 45, :matrix_id => '22', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 67
turma.save!

turma = SchoolClass.new({:identifier => '2011119101A', :class_season_id => 45, :matrix_id => '21', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 68
turma.save!

turma = SchoolClass.new({:identifier => '2011119201A', :class_season_id => 45, :matrix_id => '21', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 69
turma.save!

turma = SchoolClass.new({:identifier => '2011120201A', :class_season_id => 45, :matrix_id => '22', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 70
turma.save!

turma = SchoolClass.new({:identifier => '2011158301A', :class_season_id => 50, :matrix_id => '51', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 72
turma.save!

turma = SchoolClass.new({:identifier => '2011125302A', :class_season_id => 50, :matrix_id => '25', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 73
turma.save!

turma = SchoolClass.new({:identifier => '2011161201A', :class_season_id => 49, :matrix_id => '52', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 74
turma.save!

turma = SchoolClass.new({:identifier => '2011161201B', :class_season_id => 49, :matrix_id => '52', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 75
turma.save!

turma = SchoolClass.new({:identifier => '2011162201A', :class_season_id => 52, :matrix_id => '53', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 76
turma.save!

turma = SchoolClass.new({:identifier => '2011132101A', :class_season_id => 50, :matrix_id => '30', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 77
turma.save!

turma = SchoolClass.new({:identifier => '2011162201B', :class_season_id => 52, :matrix_id => '53', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 78
turma.save!

turma = SchoolClass.new({:identifier => '2011359203B', :class_season_id => 53, :matrix_id => '54', :period => '3', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 81
turma.save!

turma = SchoolClass.new({:identifier => '2011359203A', :class_season_id => 53, :matrix_id => '54', :period => '3', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 80
turma.save!

turma = SchoolClass.new({:identifier => '2011163301A', :class_season_id => 54, :matrix_id => '57', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 90
turma.save!

turma = SchoolClass.new({:identifier => '2011258302B', :class_season_id => 57, :matrix_id => '51', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 99
turma.save!

turma = SchoolClass.new({:identifier => '2011266201A', :class_season_id => 59, :matrix_id => '61', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 116
turma.save!

turma = SchoolClass.new({:identifier => '2011262202A', :class_season_id => 55, :matrix_id => '53', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 117
turma.save!

turma = SchoolClass.new({:identifier => '2011262202B', :class_season_id => 55, :matrix_id => '53', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 118
turma.save!

turma = SchoolClass.new({:identifier => '2011266101A', :class_season_id => 59, :matrix_id => '61', :period => '1', :shift_type_id => 1, :opening_at => '2011-07-18', :closing_at => '2050-01-01' })
turma.id = 115
turma.save!

turma = SchoolClass.new({:identifier => '20112040101A', :class_season_id => 57, :matrix_id => '53', :period => '1', :shift_type_id => 1, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 119
turma.save!

turma = SchoolClass.new({:identifier => '20112040101B', :class_season_id => 57, :matrix_id => '53', :period => '1', :shift_type_id => 1, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 120
turma.save!

turma = SchoolClass.new({:identifier => '20102018201A', :class_season_id => 2, :matrix_id => '30', :period => '1', :shift_type_id => 2, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 124
turma.save!

turma = SchoolClass.new({:identifier => '20112018201A', :class_season_id => 57, :matrix_id => '30', :period => '1', :shift_type_id => 2, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 125
turma.save!

turma = SchoolClass.new({:identifier => '20112039101A', :class_season_id => 57, :matrix_id => '52', :period => '1', :shift_type_id => 1, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 126
turma.save!

turma = SchoolClass.new({:identifier => '20112039202A', :class_season_id => 57, :matrix_id => '52', :period => '2', :shift_type_id => 2, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 127
turma.save!

turma = SchoolClass.new({:identifier => '20112039202B', :class_season_id => 57, :matrix_id => '52', :period => '2', :shift_type_id => 1, :opening_at => '2011-07-19', :closing_at => '2050-01-01' })
turma.id = 128
turma.save!

turma = SchoolClass.new({:identifier => '20112028101A', :class_season_id => 55, :matrix_id => '42', :period => '1', :shift_type_id => 1, :opening_at => '2011-07-25', :closing_at => '2050-01-01' })
turma.id = 129
turma.save!

turma = SchoolClass.new({:identifier => '20112029301A', :class_season_id => 55, :matrix_id => '41', :period => '1', :shift_type_id => 3, :opening_at => '2011-07-28', :closing_at => '2050-01-01' })
turma.id = 130
turma.save!

turma = SchoolClass.new({:identifier => '20112029301B', :class_season_id => 55, :matrix_id => '41', :period => '1', :shift_type_id => 3, :opening_at => '2011-07-28', :closing_at => '2050-01-01' })
turma.id = 131
turma.save!

turma = SchoolClass.new({:identifier => '20112007301A', :class_season_id => 55, :matrix_id => '18', :period => '1', :shift_type_id => 3, :opening_at => '2011-07-28', :closing_at => '2050-01-01' })
turma.id = 133
turma.save!

turma = SchoolClass.new({:identifier => '20112007301B', :class_season_id => 55, :matrix_id => '18', :period => '1', :shift_type_id => 3, :opening_at => '2011-07-28', :closing_at => '2050-01-01' })
turma.id = 134
turma.save!

turma = SchoolClass.new({:identifier => '20112007302A', :class_season_id => 55, :matrix_id => '18', :period => '2', :shift_type_id => 3, :opening_at => '2011-08-02', :closing_at => '2050-01-01' })
turma.id = 135
turma.save!

turma = SchoolClass.new({:identifier => '2011146101A', :class_season_id => 45, :matrix_id => '42', :period => '1', :shift_type_id => 1, :opening_at => '2011-08-02', :closing_at => '2050-01-01' })
turma.id = 52
turma.save!

turma = SchoolClass.new({:identifier => '2011116301A', :class_season_id => 45, :matrix_id => '18', :period => '1', :shift_type_id => 3, :opening_at => '2011-08-02', :closing_at => '2050-01-01' })
turma.id = 50
turma.save!

turma = SchoolClass.new({:identifier => '2011116302A', :class_season_id => 45, :matrix_id => '18', :period => '2', :shift_type_id => 3, :opening_at => '2011-08-02', :closing_at => '2050-01-01' })
turma.id = 51
turma.save!

turma = SchoolClass.new({:identifier => '2011116301B', :class_season_id => 45, :matrix_id => '18', :period => '1', :shift_type_id => 3, :opening_at => '2011-08-02', :closing_at => '2050-01-01' })
turma.id = 71
turma.save!

turma = SchoolClass.new({:identifier => '20112028102A', :class_season_id => 55, :matrix_id => '42', :period => '2', :shift_type_id => 1, :opening_at => '2011-08-02', :closing_at => '2050-01-01' })
turma.id = 140
turma.save!

turma = SchoolClass.new({:identifier => '20102008201A', :class_season_id => 21, :matrix_id => '20', :period => '1', :shift_type_id => 2, :opening_at => '2011-08-04', :closing_at => '2050-01-01' })
turma.id = 142
turma.save!

turma = SchoolClass.new({:identifier => '2011253301A', :class_season_id => 57, :matrix_id => '48', :period => '1', :shift_type_id => 3, :opening_at => '2011-08-10', :closing_at => '2050-01-01' })
turma.id = 113
turma.save!

turma = SchoolClass.new({:identifier => '20112018101A', :class_season_id => 57, :matrix_id => '30', :period => '1', :shift_type_id => 1, :opening_at => '2011-08-11', :closing_at => '2050-01-01' })
turma.id = 145
turma.save!

turma = SchoolClass.new({:identifier => '2010231b', :class_season_id => 2, :matrix_id => '18', :period => '1', :shift_type_id => 3, :opening_at => '2011-08-16', :closing_at => '2050-01-01' })
turma.id = 19
turma.save!

turma = SchoolClass.new({:identifier => '20102002101A', :class_season_id => 64, :matrix_id => '14', :period => '1', :shift_type_id => 1, :opening_at => '2011-08-24', :closing_at => '2050-01-01' })
turma.id = 146
turma.save!

turma = SchoolClass.new({:identifier => '20111002201A', :class_season_id => 65, :matrix_id => '14', :period => '1', :shift_type_id => 2, :opening_at => '2011-08-24', :closing_at => '2050-01-01' })
turma.id = 147
turma.save!

turma = SchoolClass.new({:identifier => '20112002101A', :class_season_id => 66, :matrix_id => '14', :period => '1', :shift_type_id => 1, :opening_at => '2011-08-24', :closing_at => '2050-01-01' })
turma.id = 148
turma.save!

turma = SchoolClass.new({:identifier => '20112031301A', :class_season_id => 66, :matrix_id => '44', :period => '1', :shift_type_id => 3, :opening_at => '2011-08-29', :closing_at => '2050-01-01' })
turma.id = 149
turma.save!

turma = SchoolClass.new({:identifier => '20112030201A', :class_season_id => 66, :matrix_id => '43', :period => '1', :shift_type_id => 2, :opening_at => '2011-08-29', :closing_at => '2050-01-01' })
turma.id = 153
turma.save!

turma = SchoolClass.new({:identifier => '20112032101A', :class_season_id => 66, :matrix_id => '46', :period => '1', :shift_type_id => 1, :opening_at => '2011-08-29', :closing_at => '2050-01-01' })
turma.id = 156
turma.save!

turma = SchoolClass.new({:identifier => '20111032302A', :class_season_id => 65, :matrix_id => '46', :period => '2', :shift_type_id => 3, :opening_at => '2011-08-29', :closing_at => '2050-01-01' })
turma.id = 157
turma.save!

turma = SchoolClass.new({:identifier => '20112002103A', :class_season_id => 66, :matrix_id => '14', :period => '3', :shift_type_id => 1, :opening_at => '2011-08-31', :closing_at => '2050-01-01' })
turma.id = 159
turma.save!

turma = SchoolClass.new({:identifier => '20112050301A', :class_season_id => 68, :matrix_id => '67', :period => '1', :shift_type_id => 3, :opening_at => '2011-09-02', :closing_at => '2050-01-01' })
turma.id = 161
turma.save!

turma = SchoolClass.new({:identifier => '20112051301A', :class_season_id => 57, :matrix_id => '69', :period => '1', :shift_type_id => 3, :opening_at => '2011-09-02', :closing_at => '2050-01-01' })
turma.id = 162
turma.save!

turma = SchoolClass.new({:identifier => '20112052201A', :class_season_id => 55, :matrix_id => '70', :period => '1', :shift_type_id => 2, :opening_at => '2011-09-06', :closing_at => '2050-01-01' })
turma.id = 163
turma.save!

turma = SchoolClass.new({:identifier => '20112049101A', :class_season_id => 55, :matrix_id => '65', :period => '1', :shift_type_id => 1, :opening_at => '2011-09-06', :closing_at => '2050-01-01' })
turma.id = 164
turma.save!

turma = SchoolClass.new({:identifier => '20112042201A', :class_season_id => 55, :matrix_id => '64', :period => '1', :shift_type_id => 2, :opening_at => '2011-09-06', :closing_at => '2050-01-01' })
turma.id = 165
turma.save!

turma = SchoolClass.new({:identifier => '20112032302A', :class_season_id => 55, :matrix_id => '46', :period => '2', :shift_type_id => 3, :opening_at => '2011-09-08', :closing_at => '2050-01-01' })
turma.id = 166
turma.save!

turma = SchoolClass.new({:identifier => '20112002202A', :class_season_id => 66, :matrix_id => '14', :period => '2', :shift_type_id => 2, :opening_at => '2011-09-26', :closing_at => '2050-01-01' })
turma.id = 171
turma.save!

turma = SchoolClass.new({:identifier => '20112005201A', :class_season_id => 71, :matrix_id => '77', :period => '1', :shift_type_id => 2, :opening_at => '2011-09-28', :closing_at => '2050-01-01' })
turma.id = 172
turma.save!

turma = SchoolClass.new({:identifier => '2011118202A', :class_season_id => 45, :matrix_id => '19', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2012-04-26' })
turma.id = 105
turma.save!

turma = SchoolClass.new({:identifier => '20112031302A', :class_season_id => 66, :matrix_id => '44', :period => '2', :shift_type_id => 3, :opening_at => '2011-09-12', :closing_at => '2050-01-01' })
turma.id = 167
turma.save!

turma = SchoolClass.new({:identifier => '20112008203A', :class_season_id => 66, :matrix_id => '20', :period => '3', :shift_type_id => 2, :opening_at => '2011-09-16', :closing_at => '2050-01-01' })
turma.id = 168
turma.save!

turma = SchoolClass.new({:identifier => '20112054101A', :class_season_id => 73, :matrix_id => '79', :period => '1', :shift_type_id => 1, :opening_at => '2011-09-28', :closing_at => '2050-01-01' })
turma.id = 173
turma.save!

turma = SchoolClass.new({:identifier => '20112037101A', :class_season_id => 75, :matrix_id => '85', :period => '1', :shift_type_id => 1, :opening_at => '2011-10-03', :closing_at => '2050-01-01' })
turma.id = 177
turma.save!

turma = SchoolClass.new({:identifier => '20112012302A', :class_season_id => 77, :matrix_id => '87', :period => '2', :shift_type_id => 3, :opening_at => '2011-10-05', :closing_at => '2050-01-01' })
turma.id = 179
turma.save!

turma = SchoolClass.new({:identifier => '20112030102A', :class_season_id => 66, :matrix_id => '43', :period => '2', :shift_type_id => 1, :opening_at => '2011-10-05', :closing_at => '2050-01-01' })
turma.id = 180
turma.save!

turma = SchoolClass.new({:identifier => '20112030302A', :class_season_id => 66, :matrix_id => '43', :period => '2', :shift_type_id => 3, :opening_at => '2011-10-05', :closing_at => '2050-01-01' })
turma.id = 181
turma.save!

turma = SchoolClass.new({:identifier => '20112012301A', :class_season_id => 77, :matrix_id => '87', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-05', :closing_at => '2050-01-01' })
turma.id = 182
turma.save!

turma = SchoolClass.new({:identifier => '20112012303A', :class_season_id => 77, :matrix_id => '87', :period => '3', :shift_type_id => 3, :opening_at => '2011-10-04', :closing_at => '2050-01-01' })
turma.id = 178
turma.save!

turma = SchoolClass.new({:identifier => '20112037201A', :class_season_id => 75, :matrix_id => '85', :period => '1', :shift_type_id => 2, :opening_at => '2011-10-06', :closing_at => '2050-01-01' })
turma.id = 184
turma.save!

turma = SchoolClass.new({:identifier => '20112005302A', :class_season_id => 71, :matrix_id => '89', :period => '2', :shift_type_id => 3, :opening_at => '2011-10-07', :closing_at => '2050-01-01' })
turma.id = 185
turma.save!

turma = SchoolClass.new({:identifier => '20112005301A', :class_season_id => 71, :matrix_id => '92', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-10', :closing_at => '2050-01-01' })
turma.id = 189
turma.save!

turma = SchoolClass.new({:identifier => '20112057201A', :class_season_id => 79, :matrix_id => '93', :period => '1', :shift_type_id => 2, :opening_at => '2011-10-13', :closing_at => '2050-01-01' })
turma.id = 190
turma.save!

turma = SchoolClass.new({:identifier => '20112058201A', :class_season_id => 79, :matrix_id => '94', :period => '1', :shift_type_id => 2, :opening_at => '2011-10-13', :closing_at => '2050-01-01' })
turma.id = 191
turma.save!

turma = SchoolClass.new({:identifier => '20112059102A', :class_season_id => 71, :matrix_id => '95', :period => '2', :shift_type_id => 1, :opening_at => '2011-10-18', :closing_at => '2050-01-01' })
turma.id = 192
turma.save!

turma = SchoolClass.new({:identifier => '2010111a', :class_season_id => 17, :matrix_id => '7', :period => '1', :shift_type_id => 1, :opening_at => '2012-06-19', :closing_at => '2050-01-01' })
turma.id = 17
turma.save!

turma = SchoolClass.new({:identifier => '20102008203A', :class_season_id => 64, :matrix_id => '20', :period => '3', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2012-02-08' })
turma.id = 158
turma.save!

turma = SchoolClass.new({:identifier => '20102012301A', :class_season_id => 74, :matrix_id => '23', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2012-02-08' })
turma.id = 174
turma.save!

turma = SchoolClass.new({:identifier => '20111031301A', :class_season_id => 46, :matrix_id => '44', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 152
turma.save!

turma = SchoolClass.new({:identifier => '20111027101A', :class_season_id => 44, :matrix_id => '40', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2012-02-08' })
turma.id = 139
turma.save!

turma = SchoolClass.new({:identifier => '2010231a', :class_season_id => 19, :matrix_id => '17', :period => '1', :shift_type_id => 3, :opening_at => '2012-04-26', :closing_at => '2050-01-01' })
turma.id = 18
turma.save!

turma = SchoolClass.new({:identifier => '20102005301A', :class_season_id => 19, :matrix_id => '17', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2012-02-08' })
turma.id = 170
turma.save!

turma = SchoolClass.new({:identifier => '20112002102A', :class_season_id => 59, :matrix_id => '82', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 175
turma.save!

turma = SchoolClass.new({:identifier => '20111008202A', :class_season_id => 46, :matrix_id => '20', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2012-02-08' })
turma.id = 143
turma.save!

turma = SchoolClass.new({:identifier => '20112040201A', :class_season_id => 55, :matrix_id => '53', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 123
turma.save!

turma = SchoolClass.new({:identifier => '20112040202A', :class_season_id => 57, :matrix_id => '53', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 121
turma.save!

turma = SchoolClass.new({:identifier => '20112040202B', :class_season_id => 57, :matrix_id => '53', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 122
turma.save!

turma = SchoolClass.new({:identifier => '20112056201A', :class_season_id => 68, :matrix_id => '91', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 186
turma.save!

turma = SchoolClass.new({:identifier => '20112056301A', :class_season_id => 68, :matrix_id => '91', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 187
turma.save!

turma = SchoolClass.new({:identifier => '2011164101A', :class_season_id => 54, :matrix_id => '60', :period => '1', :shift_type_id => 1, :opening_at => '2012-05-02', :closing_at => '2050-01-01' })
turma.id = 103
turma.save!

turma = SchoolClass.new({:identifier => '2010221a', :class_season_id => 21, :matrix_id => '19', :period => '1', :shift_type_id => 2, :opening_at => '2012-06-19', :closing_at => '2011-03-24' })
turma.id = 20
turma.save!

turma = SchoolClass.new({:identifier => '2011246101A', :class_season_id => 55, :matrix_id => '42', :period => '1', :shift_type_id => 1, :opening_at => '2012-06-19', :closing_at => '2012-06-19' })
turma.id = 89
turma.save!

turma = SchoolClass.new({:identifier => '20112059103A', :class_season_id => 71, :matrix_id => '95', :period => '3', :shift_type_id => 1, :opening_at => '2011-10-18', :closing_at => '2050-01-01' })
turma.id = 193
turma.save!

turma = SchoolClass.new({:identifier => '20112059203A', :class_season_id => 71, :matrix_id => '95', :period => '3', :shift_type_id => 2, :opening_at => '2011-10-18', :closing_at => '2050-01-01' })
turma.id = 194
turma.save!

turma = SchoolClass.new({:identifier => '20112004301A', :class_season_id => 90, :matrix_id => '99', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-31', :closing_at => '2050-01-01' })
turma.id = 199
turma.save!

turma = SchoolClass.new({:identifier => '20112048301A', :class_season_id => 59, :matrix_id => '96', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-27', :closing_at => '2050-01-01' })
turma.id = 195
turma.save!

turma = SchoolClass.new({:identifier => '20121099101A', :class_season_id => 112, :matrix_id => '98', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 318
turma.save!

turma = SchoolClass.new({:identifier => '20112044301A', :class_season_id => 105, :matrix_id => '141', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-27', :closing_at => '2050-01-01' })
turma.id = 198
turma.save!

turma = SchoolClass.new({:identifier => '20112045301A', :class_season_id => 59, :matrix_id => '72', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-31', :closing_at => '2050-01-01' })
turma.id = 200
turma.save!

turma = SchoolClass.new({:identifier => '2011265101A', :class_season_id => 57, :matrix_id => '59', :period => '1', :shift_type_id => 1, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 112
turma.save!

turma = SchoolClass.new({:identifier => '2011257101A', :class_season_id => 57, :matrix_id => '50', :period => '1', :shift_type_id => 1, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 108
turma.save!

turma = SchoolClass.new({:identifier => '2011257301A', :class_season_id => 57, :matrix_id => '50', :period => '1', :shift_type_id => 3, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 109
turma.save!

turma = SchoolClass.new({:identifier => '2011257102A', :class_season_id => 57, :matrix_id => '50', :period => '2', :shift_type_id => 1, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 110
turma.save!

turma = SchoolClass.new({:identifier => '2011257302A', :class_season_id => 57, :matrix_id => '50', :period => '2', :shift_type_id => 3, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 111
turma.save!

turma = SchoolClass.new({:identifier => '2011253304A', :class_season_id => 57, :matrix_id => '48', :period => '4', :shift_type_id => 3, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 114
turma.save!

turma = SchoolClass.new({:identifier => '20112053102A', :class_season_id => 80, :matrix_id => '100', :period => '2', :shift_type_id => 1, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 206
turma.save!

turma = SchoolClass.new({:identifier => '20112053103A', :class_season_id => 80, :matrix_id => '100', :period => '3', :shift_type_id => 1, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 207
turma.save!

turma = SchoolClass.new({:identifier => '20112053202A', :class_season_id => 80, :matrix_id => '100', :period => '2', :shift_type_id => 2, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 208
turma.save!

turma = SchoolClass.new({:identifier => '20112053203A', :class_season_id => 80, :matrix_id => '100', :period => '3', :shift_type_id => 2, :opening_at => '2011-11-08', :closing_at => '2050-01-01' })
turma.id = 209
turma.save!

turma = SchoolClass.new({:identifier => '20112036301A', :class_season_id => 57, :matrix_id => '51', :period => '1', :shift_type_id => 3, :opening_at => '2011-11-10', :closing_at => '2050-01-01' })
turma.id = 210
turma.save!

turma = SchoolClass.new({:identifier => '20112036302A', :class_season_id => 57, :matrix_id => '51', :period => '2', :shift_type_id => 3, :opening_at => '2011-11-10', :closing_at => '2050-01-01' })
turma.id = 211
turma.save!

turma = SchoolClass.new({:identifier => '20112055201A', :class_season_id => 82, :matrix_id => '101', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 212
turma.save!

turma = SchoolClass.new({:identifier => '20112055201B', :class_season_id => 82, :matrix_id => '101', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 213
turma.save!

turma = SchoolClass.new({:identifier => '20111062301A', :class_season_id => 85, :matrix_id => '103', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 215
turma.save!

turma = SchoolClass.new({:identifier => '20111063301A', :class_season_id => 85, :matrix_id => '104', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 216
turma.save!

turma = SchoolClass.new({:identifier => '20111061301A', :class_season_id => 85, :matrix_id => '105', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 217
turma.save!

turma = SchoolClass.new({:identifier => '20112064101A', :class_season_id => 86, :matrix_id => '106', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 219
turma.save!

turma = SchoolClass.new({:identifier => '20112064102A', :class_season_id => 86, :matrix_id => '106', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 220
turma.save!

turma = SchoolClass.new({:identifier => '20111046301A', :class_season_id => 85, :matrix_id => '102', :period => '1', :shift_type_id => 3, :opening_at => '2011-12-06', :closing_at => '2050-01-01' })
turma.id = 214
turma.save!

turma = SchoolClass.new({:identifier => '20121068301A', :class_season_id => 89, :matrix_id => '110', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 222
turma.save!

turma = SchoolClass.new({:identifier => '20121060101A', :class_season_id => 87, :matrix_id => '107', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 223
turma.save!

turma = SchoolClass.new({:identifier => '20121060301A', :class_season_id => 87, :matrix_id => '107', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 224
turma.save!

turma = SchoolClass.new({:identifier => '20121070301A', :class_season_id => 89, :matrix_id => '112', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 225
turma.save!

turma = SchoolClass.new({:identifier => '20121071301A', :class_season_id => 89, :matrix_id => '113', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 226
turma.save!

turma = SchoolClass.new({:identifier => '20121071301B', :class_season_id => 89, :matrix_id => '113', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 227
turma.save!

turma = SchoolClass.new({:identifier => '20121072301A', :class_season_id => 89, :matrix_id => '114', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 228
turma.save!

turma = SchoolClass.new({:identifier => '20121072301B', :class_season_id => 89, :matrix_id => '114', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 229
turma.save!

turma = SchoolClass.new({:identifier => '20121073301A', :class_season_id => 89, :matrix_id => '115', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 230
turma.save!

turma = SchoolClass.new({:identifier => '20121074301A', :class_season_id => 89, :matrix_id => '116', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 231
turma.save!

turma = SchoolClass.new({:identifier => '20121075301A', :class_season_id => 89, :matrix_id => '117', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 232
turma.save!

turma = SchoolClass.new({:identifier => '20121004301A', :class_season_id => 90, :matrix_id => '99', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 235
turma.save!

turma = SchoolClass.new({:identifier => '20121004302A', :class_season_id => 90, :matrix_id => '99', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 236
turma.save!

turma = SchoolClass.new({:identifier => '20121002301A', :class_season_id => 90, :matrix_id => '98', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 237
turma.save!

turma = SchoolClass.new({:identifier => '20121002302A', :class_season_id => 90, :matrix_id => '98', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 238
turma.save!

turma = SchoolClass.new({:identifier => '20121076301A', :class_season_id => 89, :matrix_id => '118', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 239
turma.save!

turma = SchoolClass.new({:identifier => '20121076301B', :class_season_id => 89, :matrix_id => '118', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 240
turma.save!

turma = SchoolClass.new({:identifier => '20112008202A', :class_season_id => 66, :matrix_id => '20', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 241
turma.save!

turma = SchoolClass.new({:identifier => '20121067201A', :class_season_id => 88, :matrix_id => '109', :period => '1', :shift_type_id => 2, :opening_at => '2012-02-07', :closing_at => '2050-01-01' })
turma.id = 221
turma.save!

turma = SchoolClass.new({:identifier => '20121078201A', :class_season_id => 91, :matrix_id => '119', :period => '1', :shift_type_id => 2, :opening_at => '2012-02-10', :closing_at => '2050-01-01' })
turma.id = 242
turma.save!

turma = SchoolClass.new({:identifier => '20121080201A', :class_season_id => 91, :matrix_id => '121', :period => '1', :shift_type_id => 2, :opening_at => '2012-02-13', :closing_at => '2050-01-01' })
turma.id = 244
turma.save!

turma = SchoolClass.new({:identifier => '20121079301A', :class_season_id => 92, :matrix_id => '120', :period => '1', :shift_type_id => 3, :opening_at => '2012-02-14', :closing_at => '2050-01-01' })
turma.id = 243
turma.save!

turma = SchoolClass.new({:identifier => '20121081101A', :class_season_id => 91, :matrix_id => '122', :period => '1', :shift_type_id => 1, :opening_at => '2012-02-14', :closing_at => '2050-01-01' })
turma.id = 245
turma.save!

turma = SchoolClass.new({:identifier => '20121082101A', :class_season_id => 92, :matrix_id => '123', :period => '1', :shift_type_id => 1, :opening_at => '2012-02-14', :closing_at => '2050-01-01' })
turma.id = 246
turma.save!

turma = SchoolClass.new({:identifier => '20121083301A', :class_season_id => 104, :matrix_id => '125', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 247
turma.save!

turma = SchoolClass.new({:identifier => '20121083302A', :class_season_id => 104, :matrix_id => '125', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 248
turma.save!

turma = SchoolClass.new({:identifier => '20121083303A', :class_season_id => 104, :matrix_id => '125', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 249
turma.save!

turma = SchoolClass.new({:identifier => '20121084301A', :class_season_id => 105, :matrix_id => '126', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 250
turma.save!

turma = SchoolClass.new({:identifier => '20121043101A', :class_season_id => 104, :matrix_id => '127', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 251
turma.save!

turma = SchoolClass.new({:identifier => '20121041102A', :class_season_id => 106, :matrix_id => '59', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 252
turma.save!

turma = SchoolClass.new({:identifier => '20121041101A', :class_season_id => 106, :matrix_id => '130', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 253
turma.save!

turma = SchoolClass.new({:identifier => '20121041101B', :class_season_id => 106, :matrix_id => '130', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 254
turma.save!

turma = SchoolClass.new({:identifier => '20121036301A', :class_season_id => 106, :matrix_id => '129', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 259
turma.save!

turma = SchoolClass.new({:identifier => '20121036302A', :class_season_id => 106, :matrix_id => '129', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 260
turma.save!

turma = SchoolClass.new({:identifier => '20121036303A', :class_season_id => 106, :matrix_id => '129', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 261
turma.save!

turma = SchoolClass.new({:identifier => '20121034301A', :class_season_id => 106, :matrix_id => '128', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 262
turma.save!

turma = SchoolClass.new({:identifier => '20121034302A', :class_season_id => 106, :matrix_id => '128', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 263
turma.save!

turma = SchoolClass.new({:identifier => '20121034303A', :class_season_id => 106, :matrix_id => '48', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 264
turma.save!

turma = SchoolClass.new({:identifier => '20121002301A', :class_season_id => 106, :matrix_id => '50', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 266
turma.save!

turma = SchoolClass.new({:identifier => '20121002101A', :class_season_id => 106, :matrix_id => '50', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 268
turma.save!

turma = SchoolClass.new({:identifier => '20121002101B', :class_season_id => 106, :matrix_id => '50', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 269
turma.save!

turma = SchoolClass.new({:identifier => '20121002102A', :class_season_id => 106, :matrix_id => '50', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 271
turma.save!

turma = SchoolClass.new({:identifier => '20121002103A', :class_season_id => 106, :matrix_id => '50', :period => '3', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 273
turma.save!

turma = SchoolClass.new({:identifier => '20121002101C', :class_season_id => 106, :matrix_id => '50', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 270
turma.save!

turma = SchoolClass.new({:identifier => '20121002102B', :class_season_id => 106, :matrix_id => '50', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 272
turma.save!

turma = SchoolClass.new({:identifier => '20121002303A', :class_season_id => 106, :matrix_id => '50', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 275
turma.save!

turma = SchoolClass.new({:identifier => '20121085201A', :class_season_id => 104, :matrix_id => '131', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 276
turma.save!

turma = SchoolClass.new({:identifier => '20121086103A', :class_season_id => 104, :matrix_id => '132', :period => '3', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 278
turma.save!

turma = SchoolClass.new({:identifier => '20121086104A', :class_season_id => 104, :matrix_id => '132', :period => '4', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 279
turma.save!

turma = SchoolClass.new({:identifier => '20121086204A', :class_season_id => 104, :matrix_id => '132', :period => '4', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 281
turma.save!

turma = SchoolClass.new({:identifier => '20121087101A', :class_season_id => 108, :matrix_id => '133', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 282
turma.save!

turma = SchoolClass.new({:identifier => '20121087301A', :class_season_id => 109, :matrix_id => '133', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 284
turma.save!

turma = SchoolClass.new({:identifier => '20121089101A', :class_season_id => 110, :matrix_id => '135', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 287
turma.save!

turma = SchoolClass.new({:identifier => '20121089201A', :class_season_id => 110, :matrix_id => '135', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 288
turma.save!

turma = SchoolClass.new({:identifier => '20121032301A', :class_season_id => 107, :matrix_id => '46', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 289
turma.save!

turma = SchoolClass.new({:identifier => '20121032301B', :class_season_id => 107, :matrix_id => '46', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 290
turma.save!

turma = SchoolClass.new({:identifier => '20121032102A', :class_season_id => 107, :matrix_id => '46', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 291
turma.save!

turma = SchoolClass.new({:identifier => '20121031301A', :class_season_id => 107, :matrix_id => '44', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 292
turma.save!

turma = SchoolClass.new({:identifier => '20121031301B', :class_season_id => 107, :matrix_id => '44', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 293
turma.save!

turma = SchoolClass.new({:identifier => '20121031303A', :class_season_id => 107, :matrix_id => '44', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 294
turma.save!

turma = SchoolClass.new({:identifier => '20121032303A', :class_season_id => 107, :matrix_id => '46', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 295
turma.save!

turma = SchoolClass.new({:identifier => '20121090201A', :class_season_id => 110, :matrix_id => '136', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 296
turma.save!

turma = SchoolClass.new({:identifier => '20121031302A', :class_season_id => 107, :matrix_id => '44', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 297
turma.save!

turma = SchoolClass.new({:identifier => '20121047301A', :class_season_id => 105, :matrix_id => '97', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 309
turma.save!

turma = SchoolClass.new({:identifier => '20112030202A', :class_season_id => 66, :matrix_id => '43', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 307
turma.save!

turma = SchoolClass.new({:identifier => '20121002101D', :class_season_id => 112, :matrix_id => '98', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 310
turma.save!

turma = SchoolClass.new({:identifier => '20121044301A', :class_season_id => 105, :matrix_id => '68', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 311
turma.save!

turma = SchoolClass.new({:identifier => '20121091101A', :class_season_id => 112, :matrix_id => '139', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 314
turma.save!

turma = SchoolClass.new({:identifier => '20121091301A', :class_season_id => 112, :matrix_id => '139', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 315
turma.save!

turma = SchoolClass.new({:identifier => '20121091301B', :class_season_id => 112, :matrix_id => '139', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 316
turma.save!

turma = SchoolClass.new({:identifier => '20112002301A', :class_season_id => 112, :matrix_id => '98', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-27', :closing_at => '2050-01-01' })
turma.id = 197
turma.save!

turma = SchoolClass.new({:identifier => '20121088101A', :class_season_id => 107, :matrix_id => '134', :period => '1', :shift_type_id => 1, :opening_at => '2012-04-26', :closing_at => '2050-01-01' })
turma.id = 283
turma.save!

turma = SchoolClass.new({:identifier => '20112034301A', :class_season_id => 57, :matrix_id => '48', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 204
turma.save!

turma = SchoolClass.new({:identifier => '20112034304A', :class_season_id => 57, :matrix_id => '48', :period => '4', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 205
turma.save!

turma = SchoolClass.new({:identifier => '20112041101A', :class_season_id => 57, :matrix_id => '59', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 201
turma.save!

turma = SchoolClass.new({:identifier => '2011258302A', :class_season_id => 57, :matrix_id => '51', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 91
turma.save!

turma = SchoolClass.new({:identifier => '20121065301A', :class_season_id => 105, :matrix_id => '137', :period => '1', :shift_type_id => 3, :opening_at => '2012-05-04', :closing_at => '2050-01-01' })
turma.id = 313
turma.save!

turma = SchoolClass.new({:identifier => '20112047301A', :class_season_id => 105, :matrix_id => '97', :period => '1', :shift_type_id => 3, :opening_at => '2011-10-27', :closing_at => '2050-01-01' })
turma.id = 196
turma.save!

turma = SchoolClass.new({:identifier => '20121099101B', :class_season_id => 112, :matrix_id => '98', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 319
turma.save!

turma = SchoolClass.new({:identifier => '20121030103A', :class_season_id => 107, :matrix_id => '43', :period => '3', :shift_type_id => 1, :opening_at => '2012-05-02', :closing_at => '2050-01-01' })
turma.id = 305
turma.save!

turma = SchoolClass.new({:identifier => '20121030303A', :class_season_id => 107, :matrix_id => '43', :period => '3', :shift_type_id => 3, :opening_at => '2012-05-02', :closing_at => '2050-01-01' })
turma.id = 306
turma.save!

turma = SchoolClass.new({:identifier => '20121030202A', :class_season_id => 107, :matrix_id => '43', :period => '2', :shift_type_id => 2, :opening_at => '2012-05-02', :closing_at => '2050-01-01' })
turma.id = 308
turma.save!

turma = SchoolClass.new({:identifier => '20112088101A', :class_season_id => 59, :matrix_id => '134', :period => '1', :shift_type_id => 1, :opening_at => '2012-05-02', :closing_at => '2050-01-01' })
turma.id = 285
turma.save!

turma = SchoolClass.new({:identifier => '20112088102A', :class_season_id => 59, :matrix_id => '134', :period => '1', :shift_type_id => 1, :opening_at => '2012-05-02', :closing_at => '2050-01-01' })
turma.id = 286
turma.save!

turma = SchoolClass.new({:identifier => '20121030101A', :class_season_id => 107, :matrix_id => '43', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 320
turma.save!

turma = SchoolClass.new({:identifier => '20121004101A', :class_season_id => 114, :matrix_id => '143', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 321
turma.save!

turma = SchoolClass.new({:identifier => '20121004201A', :class_season_id => 114, :matrix_id => '143', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 322
turma.save!

turma = SchoolClass.new({:identifier => '20111101201A', :class_season_id => 115, :matrix_id => '144', :period => '1', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 323
turma.save!

turma = SchoolClass.new({:identifier => '20121002201A', :class_season_id => 106, :matrix_id => '14', :period => '1', :shift_type_id => 2, :opening_at => '2012-06-19', :closing_at => '2050-01-01' })
turma.id = 277
turma.save!

turma = SchoolClass.new({:identifier => '20121002102C', :class_season_id => 110, :matrix_id => '14', :period => '2', :shift_type_id => 1, :opening_at => '2012-06-19', :closing_at => '2050-01-01' })
turma.id = 302
turma.save!

turma = SchoolClass.new({:identifier => '20121002203A', :class_season_id => 110, :matrix_id => '14', :period => '3', :shift_type_id => 2, :opening_at => '2012-06-19', :closing_at => '2050-01-01' })
turma.id = 304
turma.save!

turma = SchoolClass.new({:identifier => '20121002104A', :class_season_id => 110, :matrix_id => '14', :period => '4', :shift_type_id => 1, :opening_at => '2012-06-19', :closing_at => '2050-01-01' })
turma.id = 317
turma.save!

turma = SchoolClass.new({:identifier => '20121030301A', :class_season_id => 107, :matrix_id => '43', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 324
turma.save!

turma = SchoolClass.new({:identifier => '20121102401A', :class_season_id => 120, :matrix_id => '145', :period => '1', :shift_type_id => 4, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 325
turma.save!

turma = SchoolClass.new({:identifier => '20122032101A', :class_season_id => 121, :matrix_id => '46', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 326
turma.save!

turma = SchoolClass.new({:identifier => '20122032302A', :class_season_id => 121, :matrix_id => '46', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 327
turma.save!

turma = SchoolClass.new({:identifier => '20122032103A', :class_season_id => 121, :matrix_id => '46', :period => '3', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 328
turma.save!

turma = SchoolClass.new({:identifier => '20122030101A', :class_season_id => 121, :matrix_id => '43', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 329
turma.save!

turma = SchoolClass.new({:identifier => '20122030101B', :class_season_id => 121, :matrix_id => '43', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 330
turma.save!

turma = SchoolClass.new({:identifier => '20122030102A', :class_season_id => 121, :matrix_id => '43', :period => '2', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 331
turma.save!

turma = SchoolClass.new({:identifier => '20122030203A', :class_season_id => 121, :matrix_id => '43', :period => '3', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 332
turma.save!

turma = SchoolClass.new({:identifier => '20122030302A', :class_season_id => 121, :matrix_id => '43', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 333
turma.save!

turma = SchoolClass.new({:identifier => '20122030303A', :class_season_id => 121, :matrix_id => '43', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 334
turma.save!

turma = SchoolClass.new({:identifier => '20122005101A', :class_season_id => 121, :matrix_id => '14', :period => '1', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 335
turma.save!

turma = SchoolClass.new({:identifier => '20122005103A', :class_season_id => 121, :matrix_id => '14', :period => '3', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 336
turma.save!

turma = SchoolClass.new({:identifier => '20122005105A', :class_season_id => 121, :matrix_id => '14', :period => '5', :shift_type_id => 1, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 337
turma.save!

turma = SchoolClass.new({:identifier => '20122005202A', :class_season_id => 121, :matrix_id => '14', :period => '2', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 338
turma.save!

turma = SchoolClass.new({:identifier => '20122005204A', :class_season_id => 121, :matrix_id => '14', :period => '4', :shift_type_id => 2, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 339
turma.save!

turma = SchoolClass.new({:identifier => '20122031301A', :class_season_id => 121, :matrix_id => '44', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 340
turma.save!

turma = SchoolClass.new({:identifier => '20122031302A', :class_season_id => 121, :matrix_id => '44', :period => '2', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 341
turma.save!

turma = SchoolClass.new({:identifier => '20122031303A', :class_season_id => 121, :matrix_id => '44', :period => '3', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 342
turma.save!

turma = SchoolClass.new({:identifier => '20122103301A', :class_season_id => 121, :matrix_id => '146', :period => '1', :shift_type_id => 3, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 343
turma.save!

turma = SchoolClass.new({:identifier => '20129104301A', :class_season_id => 122, :matrix_id => '147', :period => '1', :shift_type_id => 3, :opening_at => '2012-08-15', :closing_at => '2050-01-01' })
turma.id = 344
turma.save!

turma = SchoolClass.new({:identifier => '20121105401A', :class_season_id => 120, :matrix_id => '148', :period => '1', :shift_type_id => 4, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 345
turma.save!

turma = SchoolClass.new({:identifier => '20121106401A', :class_season_id => 120, :matrix_id => '149', :period => '1', :shift_type_id => 4, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 346
turma.save!

turma = SchoolClass.new({:identifier => '20121107401A', :class_season_id => 120, :matrix_id => '150', :period => '1', :shift_type_id => 4, :opening_at => '1900-01-01', :closing_at => '2050-01-01' })
turma.id = 347
turma.save!

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('school_classes_id_seq', (select max(id) from school_classes), true);")