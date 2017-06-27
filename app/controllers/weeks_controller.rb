class WeeksController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @weeks = @course.weeks
  end

  def show
    @week = Week.find(params[:id])
  end

  def new
    @course = Course.find(params[:course_id])
    @week = @course.weeks.new
  end

  def create
    @course = Course.find(params[:course_id])
    @week = @course.weeks.new(week_params)
    if @week.save
    flash[:notice] = "Week successfully added!"
      redirect_to course_path(@week.course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @week = Week.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @week= Week.find(params[:id])
    if @week.update(week_params)
      flash[:notice] = "Week successfully updated!"
      redirect_to course_weeks_path
    else
      render :edit
    end
  end

  def destroy
    @week = Week.find(params[:id])
    if @week.destroy
      flash[:notice] = "Week successfully removed!"
      redirect_to course_weeks_path
    end
  end

private
  def week_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:week).permit(:title, :week_number, :course_id)
  end
end
