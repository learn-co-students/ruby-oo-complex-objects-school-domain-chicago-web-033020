require 'pry'

class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #   # binding.pry
  # end


  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each do |score, student_name|
      new_hash[score] = student_name.sort
    end
    new_hash
  end
end
