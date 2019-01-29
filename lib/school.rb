require 'pry'

class School
  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(student_grade)
    students = []
    @roster.each do |key, value|
      if key == student_grade
        students = value
      end
    end
    students
  end

  def sort
    sorted = {}
    @roster.map do |key, value|
      sorted[key] = value.sort
    end
    sorted
  end
end
