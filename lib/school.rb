require 'pry'

# code here!
class School

attr_accessor :school, :roster

def initialize(school)
   @school = school
   @roster = {}
end

def add_student(student_name, grade)
  if roster[grade] == nil
  roster[grade] = []
  end
  roster[grade] << student_name
end

def grade(grade)
  roster[grade]
end

def sort
  roster.each { |grade, student_name| student_name.sort!}

end

end

#my_school = School.new("Hun")

#add_student("Sru", 8)
#add_student("Anitha", 8)
#add_student("Krishna", 8)
#my_school.sort
#my_school.roster
