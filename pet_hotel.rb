require_relative "./dog.rb"
require_relative "./other_animals/cat.rb"

class PetHotel
    def initialize(name)
        @name = name
        @guests = []
        
    end

    def check_in(guest)
        @guests << guest
    end
end



hotel = PetHotel.new("Cassie's Place")

d1 = Dog.new('Archie')
d2 = Dog.new("Shilo")
c1 = Cat.new('Simba')

hotel.check_in(d1)
hotel.check_in(d2)
hotel.check_in(c1)

p hotel
p PetLocation