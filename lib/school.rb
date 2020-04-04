require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = { } 
  end 

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else @roster[grade] = []
      @roster[grade] << name
    end 
  end 

  def grade(grade)
    @roster[grade]  
  end 

  def sort 
    sorted_roster = @roster
    @roster.map do |key, value|
      sorted_roster[key] = value.sort 
    end 
    sorted_roster
  end 

end 