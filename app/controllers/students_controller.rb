class StudentsController < ApplicationController
    def index

        students = Student.all
        render json: students
    end
    
    def grades
        students = Student.all
        students_sorted = students.sort_by {|student| student["grade"]}
        students_sorted_reverse = students_sorted.reverse
        render json: students_sorted_reverse
    end

    def  highest_grade 

        students = Student.all
        students_sorted = students.sort_by {|student| student["grade"]}
        best_student = students_sorted.last
        render json: best_student

    end
end
