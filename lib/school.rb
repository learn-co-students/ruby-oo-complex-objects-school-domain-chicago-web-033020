# code here!
require 'pry'

class School

    # attr's
    attr_reader :name
    attr_accessor :roster

    #initialize method
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.key?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(school_grade)
        @roster.key?(school_grade) ? @roster[school_grade] : "There are no students in grade level #{school_grade}!"
    end

    def sort
        sorted_names = @roster.each_value do |value|
            value.sort!
        end

        p sorted_names
    end

end