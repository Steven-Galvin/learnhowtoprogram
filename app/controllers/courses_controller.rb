class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])

  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
    flash[:notice] = "Course successfully added!"
      redirect_to  courses_path
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course= Course.find(params[:id])
    if @course.update(course_params)
      flash[:notice] = "Course successfully updated!"
      redirect_to courses_path
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      flash[:notice] = "Course successfully removed!"
      redirect_to courses_path
    end
  end

private
  def course_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:course).permit(:title)
  end
end
