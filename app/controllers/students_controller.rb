class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  
  end

  def activate
    if @student.active
      @student.active = false
      @student.save
      redirect_to student_path
    else
      @student.active = true
      @student.save
      redirect_to student_path
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end