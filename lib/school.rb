class School
    attr_accessor :roster, :student, :add_student

    def initialize(name)
        @roster = {}
        @name = name
    end    

    def add_student(student_name, grade)
        if @roster[grade] 
          @roster[grade] << student_name
        else
          @roster[grade] = []
          @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.sort.each do |grade, name|
        hash[grade] = (name.sort)
        end
        hash
    end

end