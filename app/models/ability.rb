class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities

    user ||= User.new # guest user (not logged in)    
    
    can :update_state_select, :states
    can :update_city_select, :cities
    
    if user.has_role? :admin
     can :manage, :all
    
    elsif user.has_role? :professor
     can :read, :dashboard 
     can :teacher_school_classes, :dashboard
     can :classes_calendar, :dashboard
     
     # Professor lê somente Turma (SchoolClass) vinculada em Docêcnia (ClassTeching)
     can :read, SchoolClass do |turma|
       (ClassTeaching.where(:user_id => user.id).map {|ct| ct.discipline_class_id} & turma.discipline_classes.map {|dc| dc.id}).present?
     end
     # Professor lê somente Classe (DisciplineClass) vinculada em Docêcnia (ClassTeching)
     can :read, DisciplineClass do |classe|
       ClassTeaching.where(:discipline_class_id => classe.id, :user_id => user.id).any?
     end
     
     # Professor CRUD somente Aulas (ClassRecord) vinculada em Docêcnia (ClassTeching)
     can :manage, ClassRecord do |classe|
       ClassRecord.where(:discipline_class_id => classe.discipline_class_id, :user_id => user.id).any?
       # Professor CRUD somente Presenças (ClassRecordPresence) vinculada em Docêcnia (ClassTeching)
       can :manage, ClassRecordPresence do |presence|
         ClassRecordPresence.where(:class_record_id => presence.id).any?
       end
     end
     
       
     
     
    end
    
  end
end
