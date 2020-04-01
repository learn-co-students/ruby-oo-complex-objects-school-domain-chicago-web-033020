require 'pry'
class School
  attr_accessor :roster
  attr_reader :name

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

  def grade(grd)
    @roster[grd]
  end

  def sort
    new_hash = {}
    @roster.each do |key, value|
      new_hash[key] = value.sort
    end
    new_hash
  end
end