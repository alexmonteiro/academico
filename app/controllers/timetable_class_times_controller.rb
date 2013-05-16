class TimetableClassTimesController < ApplicationController
  load_and_authorize_resource
  # GET /timetable_class_times
  # GET /timetable_class_times.json
  def index
    @timetable_class_times = TimetableClassTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @timetable_class_times }
    end
  end

  # GET /timetable_class_times/1
  # GET /timetable_class_times/1.json
  def show
    @timetable_class_time = TimetableClassTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @timetable_class_time }
    end
  end

  # GET /timetable_class_times/new
  # GET /timetable_class_times/new.json
  def new
    @timetable_class_time = TimetableClassTime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @timetable_class_time }
    end
  end

  # GET /timetable_class_times/1/edit
  def edit
    @timetable_class_time = TimetableClassTime.find(params[:id])
  end

  # POST /timetable_class_times
  # POST /timetable_class_times.json
  def create
    @timetable_class_time = TimetableClassTime.new(params[:timetable_class_time])

    respond_to do |format|
      if @timetable_class_time.save
        format.html { redirect_to @timetable_class_time, :notice => 'Tabela de tempo de classe criada com sucesso.' }
        format.json { render :json => @timetable_class_time, :status => :created, :location => @timetable_class_time }
      else
        format.html { render :action => "new" }
        format.json { render :json => @timetable_class_time.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timetable_class_times/1
  # PUT /timetable_class_times/1.json
  def update
    @timetable_class_time = TimetableClassTime.find(params[:id])

    respond_to do |format|
      if @timetable_class_time.update_attributes(params[:timetable_class_time])
        format.html { redirect_to @timetable_class_time, :notice => 'Tabela de tempo de classe atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @timetable_class_time.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timetable_class_times/1
  # DELETE /timetable_class_times/1.json
  def destroy
    @timetable_class_time = TimetableClassTime.find(params[:id])
    @timetable_class_time.destroy

    respond_to do |format|
      format.html { redirect_to timetable_class_times_url, :notice => 'Tabela de tempo de classe excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
