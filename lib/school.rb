class School
    attr_accessor :school, :roster
    
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

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
        self.roster.each do |grade, students|
            students.sort!
        end
    end

end