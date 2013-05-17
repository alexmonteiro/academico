class ClassTimesController < ApplicationController
  load_and_authorize_resource
  # GET /class_times
  # GET /class_times.json
  def index
    @class_times = ClassTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_times }
    end
  end

  # GET /class_times/1
  # GET /class_times/1.json
  def show
    @class_time = ClassTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_time }
    end
  end

  # GET /class_times/new
  # GET /class_times/new.json
  def new
    @class_time = ClassTime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_time }
    end
  end

  # GET /class_times/1/edit
  def edit
    @class_time = ClassTime.find(params[:id])
  end

  # POST /class_times
  # POST /class_times.json
  def create
    @class_time = ClassTime.new(params[:class_time])

    respond_to do |format|
      if @class_time.save
        format.html { redirect_to @class_time, :notice => 'Horário de Classe criado com sucesso.' }
        format.json { render :json => @class_time, :status => :created, :location => @class_time }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_time.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_times/1
  # PUT /class_times/1.json
  def update
    @class_time = ClassTime.find(params[:id])

    respond_to do |format|
      if @class_time.update_attributes(params[:class_time])
        format.html { redirect_to @class_time, :notice => 'Horário de Classe atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_time.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_times/1
  # DELETE /class_times/1.json
  def destroy
    @class_time = ClassTime.find(params[:id])
    @class_time.destroy

    respond_to do |format|
      format.html { redirect_to class_times_url, :notice => 'Horário de Classe excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
