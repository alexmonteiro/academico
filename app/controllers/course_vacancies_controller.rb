class CourseVacanciesController < ApplicationController
  # GET /course_vacancies
  # GET /course_vacancies.json
  def index
    @course_vacancies = CourseVacancy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @course_vacancies }
    end
  end

  # GET /course_vacancies/1
  # GET /course_vacancies/1.json
  def show
    @course_vacancy = CourseVacancy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @course_vacancy }
    end
  end

  # GET /course_vacancies/new
  # GET /course_vacancies/new.json
  def new
    @course_vacancy = CourseVacancy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @course_vacancy }
    end
  end

  # GET /course_vacancies/1/edit
  def edit
    @course_vacancy = CourseVacancy.find(params[:id])
  end

  # POST /course_vacancies
  # POST /course_vacancies.json
  def create
    @course_vacancy = CourseVacancy.new(params[:course_vacancy])

    respond_to do |format|
      if @course_vacancy.save
        format.html { redirect_to @course_vacancy, :notice => 'Course vacancy was successfully created.' }
        format.json { render :json => @course_vacancy, :status => :created, :location => @course_vacancy }
      else
        format.html { render :action => "new" }
        format.json { render :json => @course_vacancy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_vacancies/1
  # PUT /course_vacancies/1.json
  def update
    @course_vacancy = CourseVacancy.find(params[:id])

    respond_to do |format|
      if @course_vacancy.update_attributes(params[:course_vacancy])
        format.html { redirect_to @course_vacancy, :notice => 'Course vacancy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @course_vacancy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_vacancies/1
  # DELETE /course_vacancies/1.json
  def destroy
    @course_vacancy = CourseVacancy.find(params[:id])
    @course_vacancy.destroy

    respond_to do |format|
      format.html { redirect_to course_vacancies_url }
      format.json { head :no_content }
    end
  end
end
