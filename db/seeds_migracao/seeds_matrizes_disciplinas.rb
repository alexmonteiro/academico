# Alimenta tabela de  Disciplinas das Matrizes
=begin
-- Select de Instituicoes
select ('{:matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],'')||''', 
          :discipline_id => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular_id],'')||''', 
          :matrix_discipline_group_id => '''||ARRAY_TO_STRING(ARRAY[grupo_curricular_id],'')||''',  
          :maxseasons => '''||ARRAY_TO_STRING(ARRAY[periodo_curricular],'')||''', 
          :isoptative => '''||ARRAY_TO_STRING(ARRAY[optativo],'')||''',   
          :isdependence => '''||ARRAY_TO_STRING(ARRAY[dependencia],'')||'''
         },
       ') as comando
from elemento_matriz;

-- Comando reduzido
psql -U postgres -h localhost -d dbsiga-edu -c "select ('{:matrix_id => '''||ARRAY_TO_STRING(ARRAY[matriz_curricular_id],'')||''', 
          :discipline_id => '''||ARRAY_TO_STRING(ARRAY[elemento_curricular_id],'')||''', 
          :matrix_discipline_group_id => '''||ARRAY_TO_STRING(ARRAY[grupo_curricular_id],'')||''',  
          :maxseasons => '''||ARRAY_TO_STRING(ARRAY[periodo_curricular],'')||''', 
          :isoptative => '''||ARRAY_TO_STRING(ARRAY[optativo],'')||''',   
          :isdependence => '''||ARRAY_TO_STRING(ARRAY[dependencia],'')||'''
         },
       ') as comando
from elemento_matriz;" > matriz_disciplinas

-- Comando no postgres para solucionar o problema de concatenação com valor nulo
ARRAY_TO_STRING(ARRAY[],'')

load "db/seeds_migracao/seeds_matrizes_disciplinas.rb"

=end

MatrixDiscipline.delete_all
ActiveRecord::Migration.execute("SELECT SETVAL('matrix_disciplines_id_seq', 1, false);")

MatrixDiscipline.create([
  ## Colar o código aqui
  {:matrix_id => '4', 
            :discipline_id => '2', 
            :matrix_discipline_group_id => '',  
            :maxseasons => '', 
            :isoptative => '',   
            :isdependence => ''
           },

  {:matrix_id => '7', 
            :discipline_id => '5', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '6', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '7', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '8', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '9', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '10', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '11', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '12', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '8', 
            :discipline_id => '22', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '8', 
            :discipline_id => '23', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '8', 
            :discipline_id => '24', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '35', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '36', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '37', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '38', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '39', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '40', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '41', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '7', 
            :discipline_id => '54', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '61', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '66', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '70', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '58', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '47', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '72', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '53', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '51', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '67', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '2', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '45', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '46', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '48', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '82', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '83', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '84', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '79', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '49', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '87', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '63', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '76', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '73', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '52', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '57', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '56', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '50', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '55', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '59', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '62', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '65', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '68', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '60', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '64', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '74', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '77', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '78', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '71', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '69', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '75', 
            :matrix_discipline_group_id => '2',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '80', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '81', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '85', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '7', 
            :discipline_id => '86', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '6', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '88', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '90', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '89', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '91', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '92', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '93', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '94', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '95', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '17', 
            :discipline_id => '96', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '97', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '98', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '99', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '100', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '102', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '103', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '104', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '105', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '97', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '98', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '100', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '101', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '104', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '109', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '110', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '111', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '112', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '107', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '115', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '114', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '29', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '116', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '125', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '126', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '127', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '128', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '139', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '145', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '129', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '130', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '131', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '133', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '135', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '136', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '142', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '143', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '134', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '137', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '140', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '141', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '144', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '146', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '147', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '148', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '152', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '155', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '172', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '150', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '151', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '153', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '157', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '154', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '156', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '158', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '159', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '161', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '163', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '165', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '168', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '167', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '160', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '171', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '170', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '173', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '164', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '175', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '27', 
            :discipline_id => '176', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '162', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '169', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '166', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '26', 
            :discipline_id => '174', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '28', 
            :discipline_id => '177', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '28', 
            :discipline_id => '178', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '28', 
            :discipline_id => '179', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '180', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '181', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '182', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '183', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '184', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '185', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '189', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '186', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '187', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '29', 
            :discipline_id => '188', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '30', 
            :discipline_id => '190', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '191', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '192', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '193', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '194', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '195', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '196', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '197', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '198', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '199', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '200', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '31', 
            :discipline_id => '201', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '33', 
            :discipline_id => '204', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '34', 
            :discipline_id => '204', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '21', 
            :discipline_id => '205', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '35', 
            :discipline_id => '207', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '22', 
            :discipline_id => '206', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '36', 
            :discipline_id => '212', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '36', 
            :discipline_id => '210', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '36', 
            :discipline_id => '211', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '36', 
            :discipline_id => '209', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '36', 
            :discipline_id => '208', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '40', 
            :discipline_id => '224', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '40', 
            :discipline_id => '225', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '40', 
            :discipline_id => '226', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '40', 
            :discipline_id => '227', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '243', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '232', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '234', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '236', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '237', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '238', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '239', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '240', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '241', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '228', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '229', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '230', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '244', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '245', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '246', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '247', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '249', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '250', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '251', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '252', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '253', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '254', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '255', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '229', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '256', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '252', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '234', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '41', 
            :discipline_id => '257', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '259', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '260', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '261', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '262', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '263', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '258', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '264', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '100', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '44', 
            :discipline_id => '269', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '44', 
            :discipline_id => '271', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '44', 
            :discipline_id => '272', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '44', 
            :discipline_id => '268', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '242', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '231', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '235', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '274', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '275', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '276', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '277', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '114', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '214', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '99', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '113', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '15', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '133', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '29', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '111', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '279', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '280', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '273', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '282', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '283', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '284', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '289', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '286', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '287', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '288', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '290', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '14', 
            :discipline_id => '285', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '291', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '293', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '47', 
            :discipline_id => '297', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '295', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '299', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '298', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '300', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '292', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '294', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '48', 
            :discipline_id => '296', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '236', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '237', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '99', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '234', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '301', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '19', 
            :discipline_id => '302', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '50', 
            :discipline_id => '303', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '304', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '305', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '306', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '307', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '308', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '309', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '310', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '51', 
            :discipline_id => '311', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '312', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '313', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '314', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '315', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '316', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '317', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '318', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '25', 
            :discipline_id => '319', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '25', 
            :discipline_id => '320', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '25', 
            :discipline_id => '321', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '25', 
            :discipline_id => '322', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '25', 
            :discipline_id => '323', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '25', 
            :discipline_id => '324', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '52', 
            :discipline_id => '325', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '53', 
            :discipline_id => '326', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '329', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '54', 
            :discipline_id => '328', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '54', 
            :discipline_id => '327', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '337', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '50', 
            :discipline_id => '338', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '339', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '340', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '343', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '345', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '344', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '342', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '341', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '330', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '331', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '361', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '332', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '333', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '334', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '335', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '336', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '51', 
            :discipline_id => '347', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '346', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '352', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '349', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '350', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '362', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '51', 
            :discipline_id => '351', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '18', 
            :discipline_id => '353', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '354', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '355', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '356', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '357', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '359', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '363', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '364', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '365', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '368', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '358', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '366', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '367', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '18', 
            :discipline_id => '360', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '370', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '371', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '372', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '373', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '374', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '375', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '376', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '377', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '41', 
            :discipline_id => '378', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '379', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '380', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '57', 
            :discipline_id => '391', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '392', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '393', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '394', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '395', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '396', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '397', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '398', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '399', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '400', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '60', 
            :discipline_id => '401', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '42', 
            :discipline_id => '53', 
            :matrix_discipline_group_id => '2',  
            :maxseasons => '1', 
            :isoptative => 't',   
            :isdependence => 'f'
           },

  {:matrix_id => '59', 
            :discipline_id => '385', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '386', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '384', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '383', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '387', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '389', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '382', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '381', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '402', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '404', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '405', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '146', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '148', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '143', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '406', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '149', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '132', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '403', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '407', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '408', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '409', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '410', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '411', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '412', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '413', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '61', 
            :discipline_id => '414', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '53', 
            :discipline_id => '416', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '52', 
            :discipline_id => '417', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '433', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '440', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '435', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '20', 
            :discipline_id => '438', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '446', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '441', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '452', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '439', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '443', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '20', 
            :discipline_id => '442', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '434', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '453', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '43', 
            :discipline_id => '437', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '433', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '445', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '446', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '447', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '435', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '449', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '438', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '455', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '451', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '459', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '457', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '464', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '466', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '467', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '468', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '469', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '470', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '471', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '454', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '456', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '458', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '460', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '462', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '465', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '64', 
            :discipline_id => '472', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '65', 
            :discipline_id => '473', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '67', 
            :discipline_id => '474', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '67', 
            :discipline_id => '475', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '67', 
            :discipline_id => '476', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '69', 
            :discipline_id => '478', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '70', 
            :discipline_id => '479', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '46', 
            :discipline_id => '488', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '489', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '490', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '493', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '494', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '495', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '496', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '497', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '498', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '79', 
            :discipline_id => '499', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '90', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '95', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '94', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '93', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '88', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '89', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '77', 
            :discipline_id => '92', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '82', 
            :discipline_id => '494', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '82', 
            :discipline_id => '408', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '82', 
            :discipline_id => '409', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '82', 
            :discipline_id => '411', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '82', 
            :discipline_id => '412', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '82', 
            :discipline_id => '413', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '510', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '511', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '512', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '513', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '514', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '515', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '516', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '517', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '85', 
            :discipline_id => '518', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '87', 
            :discipline_id => '418', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '419', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '420', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '421', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '422', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '423', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '424', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '425', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '118', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '119', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '120', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '122', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '123', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '124', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '107', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '527', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '503', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '504', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '505', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '506', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '507', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '44', 
            :discipline_id => '463', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '461', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '87', 
            :discipline_id => '508', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '87', 
            :discipline_id => '502', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '89', 
            :discipline_id => '528', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '89', 
            :discipline_id => '530', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '89', 
            :discipline_id => '532', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '89', 
            :discipline_id => '533', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '89', 
            :discipline_id => '534', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '89', 
            :discipline_id => '529', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '91', 
            :discipline_id => '536', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '91', 
            :discipline_id => '535', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '91', 
            :discipline_id => '537', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '91', 
            :discipline_id => '538', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '91', 
            :discipline_id => '539', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '92', 
            :discipline_id => '540', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '92', 
            :discipline_id => '542', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '92', 
            :discipline_id => '543', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '92', 
            :discipline_id => '541', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '92', 
            :discipline_id => '545', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '92', 
            :discipline_id => '544', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '93', 
            :discipline_id => '549', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '93', 
            :discipline_id => '550', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '93', 
            :discipline_id => '551', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '94', 
            :discipline_id => '553', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '94', 
            :discipline_id => '554', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '94', 
            :discipline_id => '552', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '94', 
            :discipline_id => '557', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '94', 
            :discipline_id => '555', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '94', 
            :discipline_id => '556', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '95', 
            :discipline_id => '558', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '95', 
            :discipline_id => '559', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '42', 
            :discipline_id => '248', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '96', 
            :discipline_id => '560', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '96', 
            :discipline_id => '561', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '96', 
            :discipline_id => '562', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '97', 
            :discipline_id => '563', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '98', 
            :discipline_id => '564', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '68', 
            :discipline_id => '477', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '99', 
            :discipline_id => '565', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '72', 
            :discipline_id => '566', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '100', 
            :discipline_id => '568', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '100', 
            :discipline_id => '567', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '101', 
            :discipline_id => '569', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '102', 
            :discipline_id => '573', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '102', 
            :discipline_id => '574', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '102', 
            :discipline_id => '575', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '102', 
            :discipline_id => '577', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '102', 
            :discipline_id => '576', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '102', 
            :discipline_id => '578', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '103', 
            :discipline_id => '572', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '104', 
            :discipline_id => '571', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '105', 
            :discipline_id => '579', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '105', 
            :discipline_id => '584', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '105', 
            :discipline_id => '582', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '105', 
            :discipline_id => '583', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '105', 
            :discipline_id => '581', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '105', 
            :discipline_id => '580', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '106', 
            :discipline_id => '585', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '106', 
            :discipline_id => '586', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '107', 
            :discipline_id => '594', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '107', 
            :discipline_id => '595', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '107', 
            :discipline_id => '596', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '107', 
            :discipline_id => '597', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '107', 
            :discipline_id => '598', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '109', 
            :discipline_id => '599', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '600', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '606', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '605', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '604', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '603', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '602', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '601', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '616', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '617', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '614', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '615', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '618', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '620', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '619', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '113', 
            :discipline_id => '622', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '114', 
            :discipline_id => '623', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '600', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '602', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '603', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '604', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '601', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '606', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '605', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '617', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '614', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '615', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '616', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '618', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '620', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '619', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '117', 
            :discipline_id => '625', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '117', 
            :discipline_id => '626', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '117', 
            :discipline_id => '624', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '117', 
            :discipline_id => '628', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '117', 
            :discipline_id => '627', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '117', 
            :discipline_id => '579', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '629', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '634', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '631', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '632', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '633', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '630', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '118', 
            :discipline_id => '624', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '99', 
            :discipline_id => '638', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '98', 
            :discipline_id => '639', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '112', 
            :discipline_id => '621', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '110', 
            :discipline_id => '607', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '115', 
            :discipline_id => '607', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '116', 
            :discipline_id => '621', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '119', 
            :discipline_id => '640', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '120', 
            :discipline_id => '641', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '121', 
            :discipline_id => '642', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '122', 
            :discipline_id => '643', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '123', 
            :discipline_id => '644', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '124', 
            :discipline_id => '479', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '124', 
            :discipline_id => '647', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '70', 
            :discipline_id => '647', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '70', 
            :discipline_id => '648', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '125', 
            :discipline_id => '673', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '674', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '661', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '665', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '664', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '667', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '675', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '669', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '677', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '671', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '672', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '670', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '676', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '666', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '659', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '668', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '660', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '657', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '679', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '678', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '658', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '663', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '125', 
            :discipline_id => '662', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '126', 
            :discipline_id => '681', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '127', 
            :discipline_id => '684', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '50', 
            :discipline_id => '685', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '686', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '687', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '688', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '689', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '690', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '691', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '692', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '50', 
            :discipline_id => '693', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '694', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '695', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '696', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '697', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '698', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '699', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '700', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '701', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '702', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '703', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '704', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '705', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '706', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '707', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '128', 
            :discipline_id => '708', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '709', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '710', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '711', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '712', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '713', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '714', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '48', 
            :discipline_id => '715', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '716', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '717', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '718', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '719', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '721', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '720', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '722', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '723', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '724', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '725', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '737', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '726', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '727', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '728', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '729', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '730', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '731', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '732', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '733', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '734', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '735', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '129', 
            :discipline_id => '736', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '738', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '739', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '740', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '741', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '742', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '743', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '744', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '745', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '130', 
            :discipline_id => '746', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '747', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '748', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '749', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '750', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '751', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '752', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '59', 
            :discipline_id => '753', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '131', 
            :discipline_id => '754', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '131', 
            :discipline_id => '755', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '131', 
            :discipline_id => '756', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '131', 
            :discipline_id => '757', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '131', 
            :discipline_id => '758', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '131', 
            :discipline_id => '759', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '132', 
            :discipline_id => '761', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '132', 
            :discipline_id => '762', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '132', 
            :discipline_id => '763', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '132', 
            :discipline_id => '764', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '133', 
            :discipline_id => '765', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 't',   
            :isdependence => 'f'
           },

  {:matrix_id => '134', 
            :discipline_id => '766', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '134', 
            :discipline_id => '767', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '134', 
            :discipline_id => '768', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '134', 
            :discipline_id => '769', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '135', 
            :discipline_id => '770', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '771', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '772', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '773', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '774', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '775', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '46', 
            :discipline_id => '776', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '777', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '778', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '779', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '780', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '781', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '782', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '783', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '784', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '785', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '786', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '787', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '788', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '789', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '44', 
            :discipline_id => '790', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '800', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '801', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '802', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '803', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '804', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '43', 
            :discipline_id => '805', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '68', 
            :discipline_id => '808', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '68', 
            :discipline_id => '482', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '68', 
            :discipline_id => '809', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '68', 
            :discipline_id => '483', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '97', 
            :discipline_id => '843', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '836', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '837', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '838', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '839', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '840', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '841', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '137', 
            :discipline_id => '842', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '111', 
            :discipline_id => '608', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '111', 
            :discipline_id => '610', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '111', 
            :discipline_id => '611', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '111', 
            :discipline_id => '609', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '111', 
            :discipline_id => '612', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '111', 
            :discipline_id => '613', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '835', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '823', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '824', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '825', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '826', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '827', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '828', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '829', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '830', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '831', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '832', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '833', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '138', 
            :discipline_id => '834', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '810', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '811', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '812', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '813', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '814', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '815', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '816', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '817', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '818', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '2', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '819', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '820', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '821', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '139', 
            :discipline_id => '822', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '3', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '98', 
            :discipline_id => '844', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '141', 
            :discipline_id => '482', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '141', 
            :discipline_id => '808', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '141', 
            :discipline_id => '809', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '141', 
            :discipline_id => '483', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '798', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '799', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '856', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '857', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '858', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '859', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '860', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '4', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '862', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '863', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '864', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '865', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '866', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '867', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '868', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '143', 
            :discipline_id => '869', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '144', 
            :discipline_id => '870', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '873', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '872', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '871', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '874', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '875', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '876', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '877', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '878', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '879', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '880', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '881', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '882', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '883', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '884', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '885', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '145', 
            :discipline_id => '886', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '136', 
            :discipline_id => '887', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '889', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '890', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '891', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '892', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '893', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '14', 
            :discipline_id => '894', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '5', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '895', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '896', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '897', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '898', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '899', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '900', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '146', 
            :discipline_id => '901', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '147', 
            :discipline_id => '902', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '147', 
            :discipline_id => '903', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           },

  {:matrix_id => '148', 
            :discipline_id => '904', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '906', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '907', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '908', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '909', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '910', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '905', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '911', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '912', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '913', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '914', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '915', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '916', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '917', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '918', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '148', 
            :discipline_id => '919', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '920', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '921', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '922', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '923', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '924', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '925', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '926', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '927', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '928', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '929', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '930', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '931', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '932', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '933', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '934', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '149', 
            :discipline_id => '935', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '936', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '937', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '938', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '939', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '940', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '941', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '942', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '943', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '944', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '945', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '946', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '947', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '948', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '949', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '950', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '150', 
            :discipline_id => '951', 
            :matrix_discipline_group_id => '1',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 'f'
           },

  {:matrix_id => '151', 
            :discipline_id => '952', 
            :matrix_discipline_group_id => '3',  
            :maxseasons => '1', 
            :isoptative => 'f',   
            :isdependence => 't'
           }  
  
])

#Atualiza sequence
ActiveRecord::Migration.execute("SELECT SETVAL('matrix_disciplines_id_seq', (select max(id) from matrix_disciplines), true);")