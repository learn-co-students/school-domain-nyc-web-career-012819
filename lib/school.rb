# code here!class ClassName
class School
  attr_accessor :name, :roster

  def initialize(school)
    @school = school
    @roster = Hash.new{ |h, k| h[k] = [] }
    #  @roster = Hash.new{ |h, k| h[k] = [] } #using initilizing the @roaster key/value
    #pass the Hash.new { |hash, key| hash[key] = [] }  to create a new empty hash
  end

  # def school
  #   @school
  # end
  #
  # def roster
  #   @roster
  # end

  def add_student=(student_name, grade)

    @student_name = student_name
    @grade = grade
  end

  def add_student(student_name, grade)
      @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_name|
      student_name.sort!
    end
  end
end
