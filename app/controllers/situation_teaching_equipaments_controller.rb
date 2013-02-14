class SituationTeachingEquipamentsController < ApplicationController
  # GET /situation_teaching_equipaments
  # GET /situation_teaching_equipaments.json
  def index
    @situation_teaching_equipaments = SituationTeachingEquipament.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @situation_teaching_equipaments }
    end
  end

  # GET /situation_teaching_equipaments/1
  # GET /situation_teaching_equipaments/1.json
  def show
    @situation_teaching_equipament = SituationTeachingEquipament.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @situation_teaching_equipament }
    end
  end

  # GET /situation_teaching_equipaments/new
  # GET /situation_teaching_equipaments/new.json
  def new
    @situation_teaching_equipament = SituationTeachingEquipament.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @situation_teaching_equipament }
    end
  end

  # GET /situation_teaching_equipaments/1/edit
  def edit
    @situation_teaching_equipament = SituationTeachingEquipament.find(params[:id])
  end

  # POST /situation_teaching_equipaments
  # POST /situation_teaching_equipaments.json
  def create
    @situation_teaching_equipament = SituationTeachingEquipament.new(params[:situation_teaching_equipament])

    respond_to do |format|
      if @situation_teaching_equipament.save
        format.html { redirect_to @situation_teaching_equipament, :notice => 'Situação de Equipamento de Ensino criado com sucesso.' }
        format.json { render :json => @situation_teaching_equipament, :status => :created, :location => @situation_teaching_equipament }
      else
        format.html { render :action => "new" }
        format.json { render :json => @situation_teaching_equipament.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /situation_teaching_equipaments/1
  # PUT /situation_teaching_equipaments/1.json
  def update
    @situation_teaching_equipament = SituationTeachingEquipament.find(params[:id])

    respond_to do |format|
      if @situation_teaching_equipament.update_attributes(params[:situation_teaching_equipament])
        format.html { redirect_to @situation_teaching_equipament, :notice => 'Situação de Equipamento de Ensino atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @situation_teaching_equipament.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /situation_teaching_equipaments/1
  # DELETE /situation_teaching_equipaments/1.json
  def destroy
    @situation_teaching_equipament = SituationTeachingEquipament.find(params[:id])
    @situation_teaching_equipament.destroy

    respond_to do |format|
      format.html { redirect_to situation_teaching_equipaments_url, :notice => 'Situação de Equipamento de Ensino excluída com sucesso.' }
      format.json { head :no_content }
    end
  end
end
