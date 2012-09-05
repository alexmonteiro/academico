class ClassTeachingsController < ApplicationController
  # GET /class_teachings
  # GET /class_teachings.json
  def index
    if params[:discipline_class_id]
     if params[:search]
        @search = ClassTeaching.search do
         fulltext params[{:search, :discipline_class_id}]
         paginate :page => params[:page] || 1, :per_page => 10
        end
        @class_teachings = @search.results
      else
        @class_teachings = ClassTeaching.where(:discipline_class_id => params[:discipline_class_id]).paginate(:page => params[:page], :per_page => 10)
      end
    else
      if params[:search]
         @search = ClassTeaching.search do
          fulltext params[:search]
          paginate :page => params[:page] || 1, :per_page => 10
         end
         @class_teachings = @search.results
       else
         @class_teachings = ClassTeaching.paginate(:page => params[:page], :per_page => 10)
       end      
    end


    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @class_teachings }
    end
  end

  # GET /class_teachings/1
  # GET /class_teachings/1.json
  def show
    @class_teaching = ClassTeaching.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @class_teaching }
    end
  end

  # GET /class_teachings/new
  # GET /class_teachings/new.json
  def new
    @class_teaching = ClassTeaching.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @class_teaching }
    end
  end

  # GET /class_teachings/1/edit
  def edit
    @class_teaching = ClassTeaching.find(params[:id])
  end

  # POST /class_teachings
  # POST /class_teachings.json
  def create
    @class_teaching = ClassTeaching.new(params[:class_teaching])

    respond_to do |format|
      if @class_teaching.save
        format.html { redirect_to @class_teaching, :notice => 'Class teaching was successfully created.' }
        format.json { render :json => @class_teaching, :status => :created, :location => @class_teaching }
      else
        format.html { render :action => "new" }
        format.json { render :json => @class_teaching.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /class_teachings/1
  # PUT /class_teachings/1.json
  def update
    @class_teaching = ClassTeaching.find(params[:id])

    respond_to do |format|
      if @class_teaching.update_attributes(params[:class_teaching])
        format.html { redirect_to @class_teaching, :notice => 'Class teaching was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @class_teaching.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /class_teachings/1
  # DELETE /class_teachings/1.json
  def destroy
    @class_teaching = ClassTeaching.find(params[:id])
    @class_teaching.destroy

    respond_to do |format|
      format.html { redirect_to class_teachings_url }
      format.json { head :no_content }
    end
  end
end
