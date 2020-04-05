# code here!
class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

    def sort 
      sorted_hash = @roster.each do |k, v|
        @roster[k] = v.sort
      end
      sorted_hash
    end


end
