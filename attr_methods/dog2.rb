class Dog
    # attr_reader(:name, :age) defines getter methods
    # attr_writer(:name, :age) defines setter methods
    attr_accessor(:name, :age) # defines both getters and setters
    def initialize(name, age, favorite_food)
        @name = name
        @age = age
        @favorite_food = favorite_food
    end



    # def name=(new_name)
    #     @name = new_name
    # end

    # def age=(new_age)
    #     @age = new_age
    # end

end

d1 = Dog.new("cassie", 2, "Chicken")

p d1.name
p d1.age
d1.age = 3
d1.name = "Larkin"
p d1.age
p d1.name
# d1.name = "Larkin"

# p d1.name