# code here!
require "pry"

class School

  attr_accessor :school_name ,:roster, :student

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(students, grade)
    if !roster.keys.include?(grade)
    roster[grade] = [students]
    else
      roster[grade] << students
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}

    @roster.each do |grade, names|
      new_hash[grade] = names.sort
    end
    new_hash
  end

end
