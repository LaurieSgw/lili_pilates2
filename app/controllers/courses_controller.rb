class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
    @course = Course.find(params[:id])
  end
end
