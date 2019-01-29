# code here!
class School

def initialize(name)
  @name = name
  @roster = {}
end

def roster
  @roster
end

def add_student(student_name, grade)
  if @roster.keys.include?(grade) == false
    @roster[grade] = []
    @roster[grade] << student_name
  else
    @roster[grade] << student_name
  end
  @roster
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, students|
    students.sort!
  end
  @roster
end


end
