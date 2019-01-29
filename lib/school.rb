# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_roster = {}
    @roster.each do |grade, name_array|
      new_roster[grade] = name_array.sort
    end
    new_roster
  end

end
