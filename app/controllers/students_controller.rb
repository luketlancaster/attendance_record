class StudentsController < ApplicationController

  def index
    @students = Student.order(:last_name)
  end

end
