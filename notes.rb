# pet_hotel.rb

class PetHotel
    def initialize(name)
        @name = name
        @guests = []
    end

    def check_in(guest)
        @guests << guest
    end
end

class Cat
    def initialize(name)
        @name = name
    end
end

class Dog
    def initialize(name)
        @name = name
    end
end

hotel = PetHotel.new("Animal Farm")

cat_1 = Cat.new("Sennacy")
cat_2 = Cat.new("Whiskers")
cat_3 = Cat.new("Simba")
dog_1 = Dog.new("Cassie")

hotel.check_in(cat_1)
hotel.check_in(cat_2)
hotel.check_in(cat_3)
hotel.check_in(dog_1)

p hotel
# <PetHotel:0x007fb1ce1e91f0
#   @name="Animal Inn",
#   @guests=[
#     #<Cat:0x007fb1ce1e9060 @name="Sennacy">,
#     #<Cat:0x007fb1ce1e8f48 @name="Whiskers">
#   ]
# >