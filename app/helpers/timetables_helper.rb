module TimetablesHelper
  def check_timetable(matrix_id, day_week_id, class_time_id)
    if timetable = Timetable.where(:matrix_id => matrix_id).where(:day_week_id => day_week_id).first
      if timetable.timetable_class_times.where(:class_time_id => class_time_id).count > 0
       true
      else
        false
      end
    else
      false
    end
  end
 
end
