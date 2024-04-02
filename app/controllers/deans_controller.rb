class DeansController < ApplicationController
  def grades_report
    if params[:student_id].present?
      # Get the student, his grades, and the linked semesters
      @student = Student.find(params[:student_id])
      @semesters = Semester.all
      @students = Student.all

      if params[:semester_id].present?
        @grades = @student.grades.joins(exam: :branch).where('branches.semester_id' => params[:semester_id])
      else
        @grades = @student.grades
      end
    else
      # Get all students and all semesters
      @students = Student.all
      @semesters = Semester.all
    end
    
    render "grades/report"
  end
end
