module MatrixDisciplinesHelper
  # Retorna o link_to para inserção de disciplinas como pré requisitos
  def h_link_to_prerequisites(matrix_discipline)
    if matrix_discipline.maxseasons <= 1
      ' - '
    else
      if  matrix_discipline.matrix_discipline_prerequisites.count == 0
         link_to 'incluir', course_matrix_matrix_discipline_matrix_discipline_prerequisites_path(:matrix_discipline_id => matrix_discipline.id)
      else
         link_to matrix_discipline.prerequisit_codes, course_matrix_matrix_discipline_matrix_discipline_prerequisites_path(:matrix_discipline_id => matrix_discipline.id)
      end 
    end
  end

end
