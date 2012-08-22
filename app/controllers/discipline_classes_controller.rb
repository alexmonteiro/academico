class DisciplineClassesController < ApplicationController
  # GET /discipline_classes
  # GET /discipline_classes.json
  def index
    @discipline_classes = DisciplineClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @discipline_classes }
    end
  end

  # GET /discipline_classes/1
  # GET /discipline_classes/1.json
  def show
    @discipline_class = DisciplineClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @discipline_class }
    end
  end

  # GET /discipline_classes/new
  # GET /discipline_classes/new.json
  def new
    @discipline_class = DisciplineClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @discipline_class }
    end
  end

  # GET /discipline_classes/1/edit
  def edit
    @discipline_class = DisciplineClass.find(params[:id])
  end

  # POST /discipline_classes
  # POST /discipline_classes.json
  def create
    @discipline_class = DisciplineClass.new(params[:discipline_class])

    respond_to do |format|
      if @discipline_class.save
        format.html { redirect_to @discipline_class, :notice => 'Discipline class was successfully created.' }
        format.json { render :json => @discipline_class, :status => :created, :location => @discipline_class }
      else
        format.html { render :action => "new" }
        format.json { render :json => @discipline_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /discipline_classes/1
  # PUT /discipline_classes/1.json
  def update
    @discipline_class = DisciplineClass.find(params[:id])

    respond_to do |format|
      if @discipline_class.update_attributes(params[:discipline_class])
        format.html { redirect_to @discipline_class, :notice => 'Discipline class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @discipline_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_classes/1
  # DELETE /discipline_classes/1.json
  def destroy
    @discipline_class = DisciplineClass.find(params[:id])
    @discipline_class.destroy

    respond_to do |format|
      format.html { redirect_to discipline_classes_url }
      format.json { head :no_content }
    end
  end

  def update_discipline_select

      disciplinas = SchoolClass.find(params[:id]).matrix.matrix_disciplines unless params[:id] == "0"

      
      render :partial => "disciplines", :locals => { :disciplines => disciplinas }      
  end  
end
