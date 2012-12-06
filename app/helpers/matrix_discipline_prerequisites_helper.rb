module MatrixDisciplinePrerequisitesHelper

  # Retorna o codigo html que colocará o item como disable na seleção da disciplina como pré requisito
  # As disciplinas que poderão ser pré requisitos serão somente aquelas que são de período anterior ao período da disciplina atual
  def h_disable_select(discipline)
    #Verifica se o periodo é inferior ao da disciplina atual
    if discipline.maxseasons >= @matrix_discipline.maxseasons
     "disabled=''"
    else
      #Verifica se este id já está vinculado
      if MatrixDisciplinePrerequisite.find_by_matrix_discipline_id_and_pre_matrix_discipline_id(@matrix_discipline.id, discipline.id)
        "disabled=''"
      end
    end
  end
  
end
