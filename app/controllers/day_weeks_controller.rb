class DayWeeksController < ApplicationController
  # GET /day_weeks
  # GET /day_weeks.json
  def index
    @day_weeks = DayWeek.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @day_weeks }
    end
  end

  # GET /day_weeks/1
  # GET /day_weeks/1.json
  def show
    @day_week = DayWeek.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @day_week }
    end
  end

  # GET /day_weeks/new
  # GET /day_weeks/new.json
  def new
    @day_week = DayWeek.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @day_week }
    end
  end

  # GET /day_weeks/1/edit
  def edit
    @day_week = DayWeek.find(params[:id])
  end

  # POST /day_weeks
  # POST /day_weeks.json
  def create
    @day_week = DayWeek.new(params[:day_week])

    respond_to do |format|
      if @day_week.save
        format.html { redirect_to @day_week, :notice => 'Dia da semana criado com sucesso.' }
        format.json { render :json => @day_week, :status => :created, :location => @day_week }
      else
        format.html { render :action => "new" }
        format.json { render :json => @day_week.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /day_weeks/1
  # PUT /day_weeks/1.json
  def update
    @day_week = DayWeek.find(params[:id])

    respond_to do |format|
      if @day_week.update_attributes(params[:day_week])
        format.html { redirect_to @day_week, :notice => 'Dia da semana atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @day_week.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /day_weeks/1
  # DELETE /day_weeks/1.json
  def destroy
    @day_week = DayWeek.find(params[:id])
    @day_week.destroy

    respond_to do |format|
      format.html { redirect_to day_weeks_url, :notice => 'Dia da semana excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
