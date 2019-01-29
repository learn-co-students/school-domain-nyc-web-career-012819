require'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @roster={}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade]=[name]
    end
    @roster
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_hash={}
    @roster.map do |key,value|
      sorted_hash[key]=value.sort
    end
    sorted_hash
  end
end
