class ClassRecordPresencesController < ApplicationController
  # GET /class_record_presences
  # GET /class_record_presences.json
  def index
    @class_record = ClassRecord.find(params[:class_record_id])
    @class_record_presences = ClassRecordPresence.where(:class_record_id => params[:class_record_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_record_presences }
    end
  end

  # GET /class_record_presences/1
  # GET /class_record_presences/1.json
  def show
    @class_record_presence = ClassRecordPresence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_record_presence }
    end
  end

  # GET /class_record_presences/new
  # GET /class_record_presences/new.json
  def new
    @class_record_presence = ClassRecordPresence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_record_presence }
    end
  end

  # GET /class_record_presences/1/edit
  def edit
    @class_record_presence = ClassRecordPresence.find(params[:id])
  end

  # POST /class_record_presences
  # POST /class_record_presences.json
  def create
    @class_record_presence = ClassRecordPresence.new(params[:class_record_presence])

    respond_to do |format|
      if @class_record_presence.save
        format.html { redirect_to @class_record_presence, :notice => 'Class record presence was successfully created.' }
        format.json { render :json => @class_record_presence, :status => :created, :location => @class_record_presence }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_record_presence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_record_presences/1
  # PUT /class_record_presences/1.json
  def update
    @class_record_presence = ClassRecordPresence.find(params[:id])

    respond_to do |format|
      if @class_record_presence.update_attributes(params[:class_record_presence])
        format.html { redirect_to @class_record_presence, :notice => 'Class record presence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_record_presence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_record_presences/1
  # DELETE /class_record_presences/1.json
  def destroy
    @class_record_presence = ClassRecordPresence.find(params[:id])
    @class_record_presence.destroy

    respond_to do |format|
      format.html { redirect_to class_record_presences_url }
      format.json { head :no_content }
    end
  end
  
  def update_presence
    @class_record = ClassRecord.find(params[:class_record_id])
    ClassRecordPresence.update_all(["is_present = ?", false], :id => @class_record.class_record_presences)
    ClassRecordPresence.update_all(["is_present = ?", true], :id => params[:class_record_presence_ids])
    redirect_to discipline_class_class_record_class_record_presences_path, :notice => 'Chamada atualizada com sucesso.'
  end

  def import_registration_to_presence
    @class_record = ClassRecord.find(params[:class_record_id])
    @class_record.discipline_class.registration_classes.each do |enturmation|      
      presence = ClassRecordPresence.find_or_initialize_by_registration_class_id_and_class_record_id(enturmation.id, @class_record.id) do |p|
          if p.is_present.blank?
            p.is_present = true
          end
          p.save!
      end
    end

    redirect_to discipline_class_class_record_class_record_presences_path, :notice => 'Importação realizada com sucesso.'
  end
  
end