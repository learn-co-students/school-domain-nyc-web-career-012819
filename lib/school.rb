class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster[grade] != nil
    @roster[grade] << student_name
  else
    @roster[grade]=[student_name]
  end
end

  def grade(grade)
    @roster[grade]
    end

    def sort
      hh = {}
      @roster.each do |x,y|
        @roster[x] = y.sort
      end
    end

end
