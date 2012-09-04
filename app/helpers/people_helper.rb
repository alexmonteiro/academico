module PeopleHelper
  def verificaChecados(id)
     PersonPersonType.all(:conditions => ['person_type_id = ? and person_id = ?', id, @person.id]).each do |pt|
       if pt.person_type_id == id
         return true
       end
     end
     false
   end


   def get_person_types(person)
     str_pt = String.new
     person.person_types.each do |pt|
       str_pt = str_pt + pt.description + ' | '
     end
     person.person_types.any? ? str_pt[0..str_pt.size-3] : 'Sem Vínculo'
   end 
end
