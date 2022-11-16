class Person
    attr_reader(:first_name, :last_name, :age)

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    def ==(other_person)
        self.last_name == other_person.last_name
    end

    def >(other_person)
        self.age > other_person.age
    end
end


person1 = Person.new("John", "Scott", 28)
person2 = Person.new("John", "Legend", 25)
person3 = Person.new("John", "Daniel", 30)

# p person1.==(person2)

# p person1 == person2

p person2 == person3

p person1 > person2