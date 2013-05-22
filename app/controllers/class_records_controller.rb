class ClassRecordsController < ApplicationController
  load_and_authorize_resource :discipline_class
  load_and_authorize_resource :class_record, :through => :discipline_class
  # GET /class_records
  # GET /class_records.json
  def index    
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    @class_records = ClassRecord.where(:discipline_class_id => params[:discipline_class_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_records }
    end
  end

  # GET /class_records/1
  # GET /class_records/1.json
  def show
    @class_record = ClassRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_record }
    end
  end

  # GET /class_records/new
  # GET /class_records/new.json
  def new
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    @class_record = ClassRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_record }
    end
  end

  def new_many
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    @class_record = ClassRecord.new
    @recorded_at = params[:recorded_at]

    respond_to do |format|
      format.html # new_many.html.erb
      format.json { render :json => @class_record }
    end
  end  

  # GET /class_records/1/edit
  def edit
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    @class_record = ClassRecord.find(params[:id])
    params[:recorded_at] = @class_record.recorded_at
    
  end

  # POST /class_records
  # POST /class_records.json
  def create

    @class_record = ClassRecord.new(params[:class_record])
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])   
    @class_record.discipline_class_id = @discipline_class.id
    
    respond_to do |format|
      if @class_record.save
        format.html { redirect_to  discipline_class_class_records_path(@discipline_class), :notice => 'Aula criada com sucesso.' }
        format.json { render :json => @class_record, :status => :created, :location => @class_record }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_record.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  def create_many    
    @class_record = ClassRecord.new(params[:class_record])
    checked_records = true
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])   
    @recorded_at = params[:class_record][:recorded_at]
    @class_record.class_time_id = params[:class_time_ids].first if params[:class_time_ids]
    
    if !@class_record.valid?
      checked_records = false
    else
      params[:class_time_ids].each do |class_time_id|
        class_record = ClassRecord.new(params[:class_record])
        class_record.discipline_class_id = @discipline_class.id
        class_record.class_time_id = class_time_id
        class_record.save!
      end
    end
    
    
    respond_to do |format|
     if checked_records
       format.html { redirect_to  discipline_class_class_records_path(@discipline_class), :notice => 'Aulas criada com sucesso.' }
       format.json { render :json => @discipline_class, :status => :created, :location => @discipline_class }
     else
       format.html { render :action => "new_many" }
       format.json { render :json => @class_record.erros, :status => :unprocessable_entity }
     end
    end
   
  end

  # PUT /class_records/1
  # PUT /class_records/1.json
  def update
      @class_record = ClassRecord.find(params[:id])
      @Discipline_class = DisciplineClass.find(@class_record.discipline_class_id)

    respond_to do |format|
      if @class_record.update_attributes(params[:class_record])
        format.html { redirect_to discipline_class_class_records_path(@Discipline_class), :notice => 'Aula ' +I18n.localize(@class_record.recorded_at)+' atualizada.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_records/1
  # DELETE /class_records/1.json
  def destroy    
    @class_record = ClassRecord.find(params[:id])
    @discipline_class =  @class_record.discipline_class
    if @class_record.destroy
      respond_to do |format|
        format.html { redirect_to discipline_class_class_records_path(@discipline_class), :notice => 'Aula excluída.' }
        format.json { head :no_content }
      end
    else
      error_message = ""
      respond_to do |format|
        @class_record.errors[:base].each do |error|
         error_message += "<li>#{error}</li>"
        format.html { redirect_to request.referer, :alert => error_message}
        format.json { render :json => @class_record.errors, :status => :unprocessable_entity }
       end
    end
   end
  end
  
  def classdateselect
    
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    @class_record = ClassRecord.new
    @class_records = ClassRecord.where(:discipline_class_id => params[:discipline_class_id])
    
    @date = params[:month] ? Date.parse(params[:month]) : Date.today

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_record }
    end
    
  end
  
  # GET /class_record_presences_day
  def class_record_presences_day
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    
    if params[:day]
      @class_records = ClassRecord.where(:discipline_class_id => @discipline_class.id).where(:recorded_at => params[:day])
    else
      @class_records = ClassRecord.where(:discipline_class_id => @discipline_class.id)
    end
    
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_record }
    end
  end      
  
  def update_presences_by_date   
    @class_records = ClassRecord.where(:discipline_class_id => params['discipline_class_id']).where(:recorded_at => params[:day])
    
    message = 'Chamada atualizada com sucesso.'
    
    if @class_records.count > 0      
      
      @class_records.each do |cr|
        #verifica se todas enturmacoes foram inseridas na chamada 
        #(["1","2"] + ["3","1"]) - (["1","2"] & ["3","1"])
        v_rc_presences = cr.class_record_presences.map {|rc| rc.registration_class_id}
        v_rc_registred = cr.discipline_class.registration_classes.map {|rc| rc.id}
        v_rc_nopresences = ((v_rc_presences + v_rc_registred) - (v_rc_presences & v_rc_registred) )
        v_rc_nopresences.each do |rc|
          ClassRecordPresence.create([{:class_record_id => cr.id, :registration_class_id => rc, :is_present => true}])
        end
        #coloca todos daquela classe como false para atualizar conforme parametros
        cr.class_record_presences.update_all(["is_present = ?", false])
      end
      
      
      # se possui este objeto marcá-los como true
      if params['class_record_presence_ids']
        params['class_record_presence_ids'].each do |class_record|
          ClassRecordPresence.update_all(["is_present = ?", true], {:class_record_id => class_record[0], :registration_class_id => class_record[1]})
        end
      end
      
    else
      message = 'Nenhuma ação realizada...'
    end
    redirect_to "#{class_record_presences_day_discipline_class_class_records_path}?day=#{params[:day]}", :notice => message, :params => params
  end
  
end