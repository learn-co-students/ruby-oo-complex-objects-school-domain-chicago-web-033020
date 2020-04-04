require 'pry'

class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end
    
    def sort
       sorted_roster = @roster
        @roster.each do |key, value|
            sorted_roster[key] = value.sort
        end
        # roster.map do |key, value|
        #     value.sort
        # end
        sorted_roster
    end
end