class StudentsController < ApplicationController

  def index
    students = params[:name] ? Student.all.select { |s| s.match_name(params[:name]) } : Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
