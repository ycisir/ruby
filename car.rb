# Ruby is a pure object oriented programming language in ruby everything is a Object

class Car
	# single line comment in ruby
	# variables
	steering = 1
	wheels = 4
	engine = 1
	@@gears = 6

	# what it does
	def start
		puts "------------WROOOOOOOM-----------STARTED-----------"
	end

	def accelerate
	end

	def stop
	end

	def Car.gears
		@@gears
	end
end


# defination of a class ? - It's a prototype for something (Car, Customer, Laptop)
# what is an object ? - it's an instance of a class (It has all properties and behaviour or functionality of a class)

honda = Car.new
camry = Car.new

honda.start
camry.start
puts Car::gears


# inheritance
class SUV < Car# is a derived/subclass/child of Car(baseclass/superclass/parentclass)
	# deriving all properties and functionalities of superclass
	# overriding
	def start
		puts "------------SUV-----------STARTED-----------"
	end
end

pajero = SUV.new
pajero.start

class Laptop # superclass is Object if i cant define or inherit any class
end

class Sedan < Car # now superclass is Car 
end

class Excavator
end

ex = Excavator.new
# ex.start # error
