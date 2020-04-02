class School 
  attr_reader :name
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade_lv)
    if @roster[grade_lv]
      @roster[grade_lv] << name
    else
      @roster[grade_lv] = []
      @roster[grade_lv] << name
    end
  end
  
  def grade(grade_lv)
    @roster[grade_lv]
  end
  
  def sort
    @roster.each_value do |value|
      value.sort!
    end
  end
end