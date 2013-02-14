class ShiftTypesController < ApplicationController
  # GET /shift_types
  # GET /shift_types.json
  def index
    @shift_types = ShiftType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @shift_types }
    end
  end

  # GET /shift_types/1
  # GET /shift_types/1.json
  def show
    @shift_type = ShiftType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @shift_type }
    end
  end

  # GET /shift_types/new
  # GET /shift_types/new.json
  def new
    @shift_type = ShiftType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @shift_type }
    end
  end

  # GET /shift_types/1/edit
  def edit
    @shift_type = ShiftType.find(params[:id])
  end

  # POST /shift_types
  # POST /shift_types.json
  def create
    @shift_type = ShiftType.new(params[:shift_type])

    respond_to do |format|
      if @shift_type.save
        format.html { redirect_to @shift_type, :notice => 'Turno criado com sucesso.' }
        format.json { render :json => @shift_type, :status => :created, :location => @shift_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @shift_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shift_types/1
  # PUT /shift_types/1.json
  def update
    @shift_type = ShiftType.find(params[:id])

    respond_to do |format|
      if @shift_type.update_attributes(params[:shift_type])
        format.html { redirect_to @shift_type, :notice => 'Turno atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @shift_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_types/1
  # DELETE /shift_types/1.json
  def destroy
    @shift_type = ShiftType.find(params[:id])
    @shift_type.destroy

    respond_to do |format|
      format.html { redirect_to shift_types_url, :notice => 'Turno excluído com sucesso.' }
      format.json { head :no_content }
    end
  end
end
