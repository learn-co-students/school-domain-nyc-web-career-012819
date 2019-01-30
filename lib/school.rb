class School
  attr_accessor :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    if @roster[grade].nil?
      @roster[grade] = name
    else
      @roster[grade] << name
    end
  end

  def grade(year)
    return @roster[year]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end
