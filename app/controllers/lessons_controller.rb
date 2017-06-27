class LessonsController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @lessons = @course.lessons
  end

  def show
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
  end

  def new
    @course = Course.find(params[:course_id])
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.new
  end

  def create
    @course = Course.find(params[:course_id])
    @week = Week.find(params[:week_id])
    @lesson = @week.lessons.new(lesson_params)
    if @lesson.save
    flash[:notice] = "Lesson successfully added!"
      redirect_to course_weeks_path(@course, @lesson.week)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson= Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      flash[:notice] = "Lesson successfully updated!"
      # redirect_to course_lessons_path
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    if @lesson.destroy
      flash[:notice] = "Lesson successfully removed!"
      # redirect_to course_lessons_path
    end
  end

private
  def lesson_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:lesson).permit(:title, :content, :week, :day, :lesson_type, :lesson_number, :course_id)
  end
end
