
# code here!
class School
    attr_reader :school_name #:roster
    

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new {|grade,student_name| grade[student_name] = []}
    end 

    def roster
        @roster
        #provides more flexiability to change
    end 

    def add_student(student_name, grade)
     #self.roster = {}// defined in initialize
     self.roster[grade] << student_name
    end

    def grade(grade)
        self.roster[grade]
       # @roster[grade]
    end

    def sort
        self.roster.each {|grade, student_name| student_name.sort!}
    end

end
