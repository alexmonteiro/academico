module ClassRecordsHelper
  # verifica se horario da aula jah foi inserido no dia
  def check_class_time(discipline_class_id, class_time_id, recorded_at)
    ClassRecord.find_by_discipline_class_id_and_class_time_id_and_recorded_at(discipline_class_id,class_time_id, recorded_at) ? true : false
  end
end
