class Person 
    def initialize(name,age)
        @name = name
        @age = age        
    end

    def display
        p "name : #{@name}"
        p "age : #{@age}"         
    end
end

class Student < Person
    def initialize (name,age,section)
        super(name,age)
        @section = section
    end

    def display
        super
        p "section : #{@section}"        
    end
end

p = Person.new("Tomas Wild", 37)
p.display

student = Student.new("Albert", 23, "Mathematics")
student.display
