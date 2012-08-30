# Alimenta tabela de Matrizes
=begin
-- Select de Instituicoes
select ('
matriz = Matrix.new(
         {:started_at => \''||data_inicio||'\', 
          :ended_at => \''||coalesce(data_fim, '01/01/2050')||'\', 
          :maxdisciplines => \''||numero_maximo_elemento_acursar||'\',  
          :course_id => \''||curso_id||'\', 
          :matrix_evaluation_type_id => \''||forma_avaliacao_id||'\',   
          :matrix_status_id => \''||situacao_matriz_curricular_id||'\',
          :maxseasons => \''||numero_periodos||'\',  
          :class_season_type_id => '||tipo_periodo_matriz_curricular_id||'
         })
matriz.id = '||id||'
matriz.save!         
       ') as comando
from matriz_curricular
order by matriz_curricular.id;

-- Comando reduzido

select ('matriz = Matrix.new({:started_at => \''||data_inicio||'\', :ended_at => \''||coalesce(data_fim, '01/01/2050')||'\', :maxdisciplines => \''||numero_maximo_elemento_acursar||'\', :course_id => \''||curso_id||'\', :matrix_evaluation_type_id => \''||forma_avaliacao_id||'\', :matrix_status_id => \''||situacao_matriz_curricular_id||'\', :maxseasons => \''||numero_periodos||'\', :class_season_type_id => '||tipo_periodo_matriz_curricular_id||'})
matriz.id = '||id||'
matriz.save! ') as comando
from matriz_curricular
order by matriz_curricular.id;


=end

Matrix.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('matrices_id_seq', 1, false);")

matriz = Matrix.new({:started_at => '2010-06-01', :ended_at => '2010-09-09', :maxdisciplines => '12', :course_id => '2', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 4
matriz.save! 
matriz = Matrix.new({:started_at => '2010-05-31', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '4', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 2})
matriz.id = 6
matriz.save! 
matriz = Matrix.new({:started_at => '2010-03-01', :ended_at => '2050-01-01', :maxdisciplines => '12', :course_id => '2', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 7
matriz.save! 
matriz = Matrix.new({:started_at => '2010-05-24', :ended_at => '2010-07-08', :maxdisciplines => '3', :course_id => '6', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 8
matriz.save! 
matriz = Matrix.new({:started_at => '2010-08-09', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '8', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '8', :class_season_type_id => 1})
matriz.id = 14
matriz.save! 
matriz = Matrix.new({:started_at => '2010-08-02', :ended_at => '2050-01-01', :maxdisciplines => '12', :course_id => '14', :matrix_evaluation_type_id => '2', :matrix_status_id => '4', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 17
matriz.save! 
matriz = Matrix.new({:started_at => '2010-08-02', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '16', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 18
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-01', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '18', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 19
matriz.save! 
matriz = Matrix.new({:started_at => '2010-08-02', :ended_at => '2050-01-01', :maxdisciplines => '9', :course_id => '17', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 20
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-01', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '19', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 21
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-01', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '20', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 22
matriz.save! 
matriz = Matrix.new({:started_at => '2010-08-02', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '21', :matrix_evaluation_type_id => '2', :matrix_status_id => '4', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 23
matriz.save! 
matriz = Matrix.new({:started_at => '2010-08-02', :ended_at => '2050-01-01', :maxdisciplines => '9', :course_id => '25', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 25
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-13', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '26', :matrix_evaluation_type_id => '2', :matrix_status_id => '3', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 26
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-13', :ended_at => '2050-01-01', :maxdisciplines => '17', :course_id => '27', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 27
matriz.save! 
matriz = Matrix.new({:started_at => '2010-07-27', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '30', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 28
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-13', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '31', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 29
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-13', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '32', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 30
matriz.save! 
matriz = Matrix.new({:started_at => '2010-09-13', :ended_at => '2050-01-01', :maxdisciplines => '11', :course_id => '33', :matrix_evaluation_type_id => '2', :matrix_status_id => '3', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 31
matriz.save! 
matriz = Matrix.new({:started_at => '2010-10-13', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '35', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 33
matriz.save! 
matriz = Matrix.new({:started_at => '2010-10-14', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '36', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 34
matriz.save! 
matriz = Matrix.new({:started_at => '2010-10-13', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '38', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 35
matriz.save! 
matriz = Matrix.new({:started_at => '2010-11-01', :ended_at => '2050-01-01', :maxdisciplines => '5', :course_id => '39', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 36
matriz.save! 
matriz = Matrix.new({:started_at => '2010-11-01', :ended_at => '2050-01-01', :maxdisciplines => '5', :course_id => '40', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 37
matriz.save! 
matriz = Matrix.new({:started_at => '2011-01-10', :ended_at => '2050-01-01', :maxdisciplines => '4', :course_id => '45', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 2})
matriz.id = 40
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-07', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '47', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 41
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-07', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '46', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 42
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-07', :ended_at => '2050-01-01', :maxdisciplines => '6', :course_id => '49', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 43
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-07', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '50', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 44
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-07', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '51', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 46
matriz.save! 
matriz = Matrix.new({:started_at => '2011-03-14', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '52', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 47
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-14', :ended_at => '2050-01-01', :maxdisciplines => '9', :course_id => '53', :matrix_evaluation_type_id => '1', :matrix_status_id => '3', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 48
matriz.save! 
matriz = Matrix.new({:started_at => '2010-02-01', :ended_at => '2050-01-01', :maxdisciplines => '60', :course_id => '56', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '3', :class_season_type_id => 2})
matriz.id = 49
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-14', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '57', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 50
matriz.save! 
matriz = Matrix.new({:started_at => '2011-03-14', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '58', :matrix_evaluation_type_id => '1', :matrix_status_id => '4', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 51
matriz.save! 
matriz = Matrix.new({:started_at => '2011-02-14', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '61', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 52
matriz.save! 
matriz = Matrix.new({:started_at => '2011-04-04', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '62', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 53
matriz.save! 
matriz = Matrix.new({:started_at => '2011-03-14', :ended_at => '2050-01-01', :maxdisciplines => '7', :course_id => '59', :matrix_evaluation_type_id => '1', :matrix_status_id => '4', :maxseasons => '3', :class_season_type_id => 6})
matriz.id = 54
matriz.save! 
matriz = Matrix.new({:started_at => '2011-04-25', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '63', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 3})
matriz.id = 57
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-03', :ended_at => '2050-01-01', :maxdisciplines => '11', :course_id => '65', :matrix_evaluation_type_id => '1', :matrix_status_id => '3', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 59
matriz.save! 
matriz = Matrix.new({:started_at => '2011-04-25', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '64', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 60
matriz.save! 
matriz = Matrix.new({:started_at => '2011-07-05', :ended_at => '2011-12-23', :maxdisciplines => '10', :course_id => '66', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 61
matriz.save! 
matriz = Matrix.new({:started_at => '2011-06-20', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '67', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 64
matriz.save! 
matriz = Matrix.new({:started_at => '2011-06-20', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '77', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 65
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-15', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '76', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 66
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-15', :ended_at => '2050-01-01', :maxdisciplines => '4', :course_id => '79', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 67
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-16', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '69', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 68
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-03', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '80', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 69
matriz.save! 
matriz = Matrix.new({:started_at => '2011-06-20', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '81', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 70
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-27', :ended_at => '2050-01-01', :maxdisciplines => '2', :course_id => '70', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 72
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-09', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '14', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 77
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-15', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '83', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 79
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-15', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '66', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 82
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-05', :ended_at => '2050-01-01', :maxdisciplines => '9', :course_id => '59', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 85
matriz.save! 
matriz = Matrix.new({:started_at => '2011-07-27', :ended_at => '2050-01-01', :maxdisciplines => '9', :course_id => '21', :matrix_evaluation_type_id => '2', :matrix_status_id => '4', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 86
matriz.save! 
matriz = Matrix.new({:started_at => '2011-07-27', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '21', :matrix_evaluation_type_id => '2', :matrix_status_id => '4', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 87
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-09', :ended_at => '2050-01-01', :maxdisciplines => '9', :course_id => '14', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '2', :class_season_type_id => 1})
matriz.id = 89
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-01', :ended_at => '2011-12-23', :maxdisciplines => '5', :course_id => '86', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 91
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-09', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '14', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 92
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-12', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '87', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 93
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-12', :ended_at => '2050-01-01', :maxdisciplines => '6', :course_id => '88', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 94
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-09', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '89', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 95
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-26', :ended_at => '2050-01-01', :maxdisciplines => '3', :course_id => '75', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 96
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-26', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '72', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 97
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-26', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '73', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '8', :class_season_type_id => 1})
matriz.id = 98
matriz.save! 
matriz = Matrix.new({:started_at => '2011-09-26', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '74', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '8', :class_season_type_id => 1})
matriz.id = 99
matriz.save! 
matriz = Matrix.new({:started_at => '2011-08-09', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '90', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 100
matriz.save! 
matriz = Matrix.new({:started_at => '2011-11-23', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '93', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 3})
matriz.id = 101
matriz.save! 
matriz = Matrix.new({:started_at => '2011-10-10', :ended_at => '2050-01-01', :maxdisciplines => '6', :course_id => '95', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 102
matriz.save! 
matriz = Matrix.new({:started_at => '2011-10-10', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '97', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 103
matriz.save! 
matriz = Matrix.new({:started_at => '2011-10-10', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '98', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 104
matriz.save! 
matriz = Matrix.new({:started_at => '2011-10-10', :ended_at => '2050-01-01', :maxdisciplines => '6', :course_id => '96', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 105
matriz.save! 
matriz = Matrix.new({:started_at => '2011-10-22', :ended_at => '2050-01-01', :maxdisciplines => '2', :course_id => '99', :matrix_evaluation_type_id => '2', :matrix_status_id => '1', :maxseasons => '2', :class_season_type_id => 1})
matriz.id = 106
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '14', :course_id => '94', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 107
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-09', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '103', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 109
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '104', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 110
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '6', :course_id => '105', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 111
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '106', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 112
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '107', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 113
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '108', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 114
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '109', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 115
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '110', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 116
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '111', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 117
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '112', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 118
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-16', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '114', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 119
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-17', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '115', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 120
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-16', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '116', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 121
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-16', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '117', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 122
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-17', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '118', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 123
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-27', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '81', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '2', :class_season_type_id => 1})
matriz.id = 124
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-06', :ended_at => '2050-01-01', :maxdisciplines => '21', :course_id => '119', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 125
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '120', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 126
matriz.save! 
matriz = Matrix.new({:started_at => '2012-01-01', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '68', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 127
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-21', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '53', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 128
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-22', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '58', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 129
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-22', :ended_at => '2050-01-01', :maxdisciplines => '10', :course_id => '65', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 130
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-02', :ended_at => '2050-01-01', :maxdisciplines => '6', :course_id => '121', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 131
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-28', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '122', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '4', :class_season_type_id => 1})
matriz.id = 132
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '123', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 133
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-01', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '124', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 134
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '125', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 135
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '7', :course_id => '126', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 136
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '127', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 137
matriz.save! 
matriz = Matrix.new({:started_at => '2012-07-30', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '129', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 138
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-13', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '128', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '3', :class_season_type_id => 1})
matriz.id = 139
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '74', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 140
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-26', :ended_at => '2050-01-01', :maxdisciplines => '2', :course_id => '69', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 141
matriz.save! 
matriz = Matrix.new({:started_at => '2012-03-20', :ended_at => '2012-07-20', :maxdisciplines => '10', :course_id => '130', :matrix_evaluation_type_id => '1', :matrix_status_id => '1', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 142
matriz.save! 
matriz = Matrix.new({:started_at => '2012-04-09', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '131', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 143
matriz.save! 
matriz = Matrix.new({:started_at => '2011-11-08', :ended_at => '2050-01-01', :maxdisciplines => '1', :course_id => '132', :matrix_evaluation_type_id => '1', :matrix_status_id => '3', :maxseasons => '1', :class_season_type_id => 1})
matriz.id = 144
matriz.save! 
matriz = Matrix.new({:started_at => '2012-02-11', :ended_at => '2050-01-01', :maxdisciplines => '18', :course_id => '134', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 145
matriz.save! 
matriz = Matrix.new({:started_at => '2012-08-13', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '135', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '6', :class_season_type_id => 1})
matriz.id = 146
matriz.save! 
matriz = Matrix.new({:started_at => '2012-08-15', :ended_at => '2050-01-01', :maxdisciplines => '5', :course_id => '136', :matrix_evaluation_type_id => '1', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 5})
matriz.id = 147
matriz.save! 
matriz = Matrix.new({:started_at => '2012-06-11', :ended_at => '2050-01-01', :maxdisciplines => '8', :course_id => '137', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 148
matriz.save! 
matriz = Matrix.new({:started_at => '2012-06-11', :ended_at => '2050-01-01', :maxdisciplines => '16', :course_id => '138', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 149
matriz.save! 
matriz = Matrix.new({:started_at => '2012-06-11', :ended_at => '2050-01-01', :maxdisciplines => '16', :course_id => '139', :matrix_evaluation_type_id => '2', :matrix_status_id => '2', :maxseasons => '1', :class_season_type_id => 6})
matriz.id = 150
matriz.save!


#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('matrices_id_seq', (select max(id) from matrices), true);")