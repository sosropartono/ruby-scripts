class Student

    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(student)
        if self.grade > student.grade
            "Well done!"
        else
            "Bad!"
        end
    end
    protected
    attr_accessor :name, :grade

end


kyle = Student.new("kyle", 100 )
bob = Student.new("bob", 200)
puts bob.better_grade_than?(kyle)