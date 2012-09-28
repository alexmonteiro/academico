class ClassRecordsController < ApplicationController
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

  # GET /class_records/1/edit
  def edit
    @discipline_class = DisciplineClass.find(params[:discipline_class_id])
    @class_record = ClassRecord.find(params[:id])
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
    @class_record.destroy

    respond_to do |format|
      format.html { redirect_to class_records_url }
      format.json { head :no_content }
    end
  end
end
