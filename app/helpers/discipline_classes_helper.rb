module DisciplineClassesHelper
  def h_status_color(rclass)
   if @discipline_class.ending_at?
    rclass.registration_class_status.is_approved? ? "alert alert-info" : "alert alert-error"
   end
  end
end
