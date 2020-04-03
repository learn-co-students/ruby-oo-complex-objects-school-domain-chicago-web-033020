class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #or! how do i get or? ||!!
    
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(num)
    @roster[num]
  end

  def sort

 
    @roster.each do |grade, people|
      people.sort!
    end
    

  end

    


end