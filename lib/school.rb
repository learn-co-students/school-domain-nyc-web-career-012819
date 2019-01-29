# code here!

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade_levels)
    list = roster
    if list.keys.include?(grade_levels)
      list[grade_levels].push(name)
    else
      @roster[grade_levels] =  [] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    grades = roster.keys.sort
    grades.each do |key|
      sorted[key] = roster[key].sort
    end
    sorted
  end
end
