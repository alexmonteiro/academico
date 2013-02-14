class TimetablesController < ApplicationController
  # GET /timetables
  # GET /timetables.json
  def index
  if params[:matrix_id]
    @timetables = Timetable.where(:matrix_id => params[:matrix_id])
  else
    @timetables = Timetable.all
  end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @timetables }
    end
  end

  # GET /timetables/1
  # GET /timetables/1.json
  def show
    @timetable = Timetable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @timetable }
    end
  end

  # GET /timetables/new
  # GET /timetables/new.json
  def new
    @timetable = Timetable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @timetable }
    end
  end

  # GET /timetables/1/edit
  def edit
    @timetable = Timetable.find(params[:id])
  end

  # POST /timetables
  # POST /timetables.json
  def create
    @timetable = Timetable.new(params[:timetable])

    respond_to do |format|
      if @timetable.save
        format.html { redirect_to @timetable, :notice => 'Tabela de tempo criada com sucesso.' }
        format.json { render :json => @timetable, :status => :created, :location => @timetable }
      else
        format.html { render :action => "new" }
        format.json { render :json => @timetable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timetables/1
  # PUT /timetables/1.json
  def update
    @timetable = Timetable.find(params[:id])

    respond_to do |format|
      if @timetable.update_attributes(params[:timetable])
        format.html { redirect_to @timetable, :notice => 'Tabela de tempo atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @timetable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timetables/1
  # DELETE /timetables/1.json
  def destroy
    @timetable = Timetable.find(params[:id])
    @timetable.destroy

    respond_to do |format|
      format.html { redirect_to timetables_url, :notice => 'Tabela de tempo excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
