class RegistrationClassesController < ApplicationController
  # GET /registration_classes
  # GET /registration_classes.json
  def index
    if params[:registration_id]
      @registration = Registration.find(params[:registration_id])
      @registration_classes = RegistrationClass.where(:registration_id => params[:registration_id])
    elsif params[:discipline_class_id]
      @discipline_class = DisciplineClass.find(params[:discipline_class_id])
      @registration_classes = RegistrationClass.where(:discipline_class_id => params[:discipline_class_id])
      @unregistrations = Registration.where('id not in (?)', @registration_classes.map { |v| (v.registration_id)}).where(:course_matrix_id => @discipline_class.matrix_discipline.course_matrix.id)     
    else
     @registration_classes = RegistrationClass.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registration_classes }
    end
  end

  # GET /registration_classes/1
  # GET /registration_classes/1.json
  def show
    
    if params.has_key?(:discipline_class_id)
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end
    if params.has_key?(:registration_id)
     @registration = Registration.find(params[:registration_id])
    end    
    
    @registration_class = RegistrationClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration_class }
    end
  end

  # GET /registration_classes/new
  # GET /registration_classes/new.json
  def new

    if params.has_key?(:discipline_class_id)
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end
    if params.has_key?(:registration_id)
     @registration = Registration.find(params[:registration_id])
    end
        
    @registration_class = RegistrationClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration_class }
    end
  end

  # GET /registration_classes/1/edit
  def edit
    if params.has_key?(:discipline_class_id)
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    end
    if params.has_key?(:registration_id)
     @registration = Registration.find(params[:registration_id])
    end
    
    @registration_class = RegistrationClass.find(params[:id])
  end

  # POST /registration_classes
  # POST /registration_classes.json
  def create        
    @registration_class = RegistrationClass.new(params[:registration_class])

    if params.has_key?(:discipline_class_id)
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
     @registration_class.discipline_class_id = params[:discipline_class_id]


     respond_to do |format|
       if @registration_class.save
         format.html { redirect_to @registration_class, :notice => 'Enturmação criada com sucesso.' }
         format.json { render :json => @registration_class, :status => :created, :location => @registration_class }
       else
         format.html { render :action => "new" }
         format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
       end
     end

    end
    
    
    if params.has_key?(:registration_id)
     @registration = Registration.find(params[:registration_id])
     @registration_class.registration_id = params[:registration_id]

     respond_to do |format|
       if @registration_class.save
         format.html { redirect_to registration_registration_classes_path, :notice => 'Enturmação criada com sucesso.' }
         format.json { render :json => @registration_class, :status => :created, :location => @registration_class }
       else
         format.html { render :action => "new" }
         format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
       end
     end
     
    end
    
    
  end

  # PUT /registration_classes/1
  # PUT /registration_classes/1.json
  def update
    @registration_class = RegistrationClass.find(params[:id])

    if params.has_key?(:discipline_class_id)
     @discipline_class = DisciplineClass.find(params[:discipline_class_id])
     @registration_class.discipline_class_id = params[:discipline_class_id]

     respond_to do |format|
       if @registration_class.update_attributes(params[:registration_class])
         format.html { redirect_to discipline_class_registration_classes_path(@registration_class.discipline_class), :notice => 'Enturmação atualizada com sucesso.' }
         format.json { head :no_content }
       else
         format.html { render :action => "edit" }
         format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
       end
     end
     
    end
    
    
    if params.has_key?(:registration_id)
     @registration = Registration.find(params[:registration_id])
     @registration_class.registration_id = params[:registration_id]

     respond_to do |format|
       if @registration_class.update_attributes(params[:registration_class])
         format.html { redirect_to registration_registration_classes_path, :notice => 'Enturmação atualizada com sucesso.'}
         format.json { render :json => @registration_class, :status => :created, :location => @registration_class }
       else
         format.html { render :action => "edit" }
         format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
       end
     end
     
    end    
    
    

  end


  def create_registration_classes
    if params[:discipline_class_registration_classe_ids]
       @discipline_class = DisciplineClass.find(params[:discipline_class_id])
     
      if @discipline_class.vacancies_left >= params[:discipline_class_registration_classe_ids].count
        params[:discipline_class_registration_classe_ids].each do |unregistration|      
           registration_classe = RegistrationClass.find_or_initialize_by_registration_id_and_discipline_class_id(unregistration, @discipline_class.id) do |rc|
              rc.registered_at = Date.today
              rc.registration_class_status_id = 5 #Em curso
              rc.save!
           end
         end
        redirect_to discipline_class_registration_classes_path, :notice => 'Enturmação realizada com sucesso.'
      else
        redirect_to discipline_class_registration_classes_path, :alert => 'Vagas insuficientes para enturmação.'
      end
   else
    redirect_to discipline_class_registration_classes_path, :alert => 'Nenhuma matrícula selecionada.'
   end
     
  end


  # DELETE /registration_classes/1
  # DELETE /registration_classes/1.json
  def destroy    
     @registration_class = RegistrationClass.find(params[:id])
     
     if params.has_key?(:discipline_class_id)
      @discipline_class = DisciplineClass.find(params[:discipline_class_id])
      @registration_class.discipline_class_id = params[:discipline_class_id]

       if @registration_class.destroy
         respond_to do |format|
           format.html { redirect_to discipline_class_registration_classes_url, :notice => 'Enturmação excluída com sucesso.' }
           format.json { head :no_content }
         end
       else
         error_message = ""
         respond_to do |format|
           @registration_class.errors[:base].each do |error|
            error_message += "<li>#{error}</li>"
           format.html { redirect_to request.referer, :alert => error_message}
           format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
          end
       end
      end
      
     end


     if params.has_key?(:registration_id)
      @registration = Registration.find(params[:registration_id])
      @registration_class.registration_id = params[:registration_id]


       if @registration_class.destroy
         respond_to do |format|
           format.html { redirect_to registration_registration_classes_path, :notice => 'Enturmação excluída com sucesso.' }
           format.json { head :no_content }
         end
       else
         error_message = ""
         respond_to do |format|
           @registration_class.errors[:base].each do |error|
            error_message += "<li>#{error}</li>"
           format.html { redirect_to request.referer, :alert => error_message}
           format.json { render :json => @registration_class.errors, :status => :unprocessable_entity }
          end
       end
      end      

     end     
        
  end
    
end
