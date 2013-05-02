class TeachingEquipamentsController < ApplicationController
  # GET /teaching_equipaments
  # GET /teaching_equipaments.json
  def index
    @dept = Dept.find((params[:dept_id]))
    @teaching_equipaments = TeachingEquipament.where("dept_id = ?", params[:dept_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @teaching_equipaments }
    end
  end

  # GET /teaching_equipaments/1
  # GET /teaching_equipaments/1.json
  def show
    @dept = Dept.find((params[:dept_id]))
    @teaching_equipament = TeachingEquipament.find(params[:id])
    #Checks if the dept is owner of this aequipament
    if @teaching_equipament.dept_id == @dept.id
      respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @teaching_equipament }
      end
    else
      respond_to do |format|
        format.html { redirect_to dept_teaching_equipaments_path, :notice => "Este registro não existe."}
        format.json { render :json => @teaching_equipament }
      end
    end
  end

  # GET /teaching_equipaments/new
  # GET /teaching_equipaments/new.json
  def new
    @dept = Dept.find((params[:dept_id]))
    @teaching_equipament = TeachingEquipament.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @teaching_equipament }
    end
  end

  # GET /teaching_equipaments/1/edit
  def edit
    @dept = Dept.find((params[:dept_id]))
    @teaching_equipament = TeachingEquipament.find(params[:id])
  end

  # POST /teaching_equipaments
  # POST /teaching_equipaments.json
  def create
    @dept = Dept.find((params[:dept_id]))
    @teaching_equipament = TeachingEquipament.new(params[:teaching_equipament])
    
    #comando para transformar as "/" para "." pois o sistema nao le datas com "/"
    params[:teaching_equipament][:arrival_date].gsub!("/",".")

    respond_to do |format|
      if @teaching_equipament.save
        format.html { redirect_to [@dept, @teaching_equipament], :notice => 'Equipamento de Ensino criado com sucesso.' }
        format.json { render :json => [@dept, @teaching_equipament], :status => :created, :location => @teaching_equipament }
      else
        format.html { render :action => "new" }
        format.json { render :json => @teaching_equipament.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /teaching_equipaments/1
  # PUT /teaching_equipaments/1.json
  def update
    @dept = Dept.find((params[:dept_id]))
    @teaching_equipament = TeachingEquipament.find(params[:id])
    
    #comando para transformar as "/" para "." pois o sistema nao le datas com "/"
    params[:teaching_equipament][:arrival_date].gsub!("/",".")

    respond_to do |format|
      if @teaching_equipament.update_attributes(params[:teaching_equipament])
        format.html { redirect_to [@dept, @teaching_equipament], :notice => 'Equipamento de Ensino atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @teaching_equipament.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_equipaments/1
  # DELETE /teaching_equipaments/1.json
  def destroy
    @teaching_equipament = TeachingEquipament.find(params[:id])
    @teaching_equipament.destroy

    respond_to do |format|
      format.html { redirect_to dept_teaching_equipaments_path, :notice => 'Equipamento de Ensino excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
