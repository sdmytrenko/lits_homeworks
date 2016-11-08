class Mammal
	def method_name
		
	end
end

class Dog
	def self.closest_relative
		"wolf"
	end

	def bark
		"woof"
	end

	def number_of_feet
		4
	end
end

fido = Dog.new
p fido.bark
p fido.number_of_feet
p fido.inspect

snoopy = Dog.new

def snoopy.alter_ego
	"Red Baron"
end

p snoopy.alter_ego
p Dog.closest_relative
p snoopy