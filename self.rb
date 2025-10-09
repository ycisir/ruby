=begin
self
current object
=end

class Cycling
	attr_accessor :name

	def start_cycling
		puts "#{self.name} is riding a bicycle"
	end
end

simon = Cycling.new
doe = Cycling.new

simon.name = "Simon"
doe.name = "Doe"


simon.start_cycling
doe.start_cycling



puts self #main
class A
	puts self

	def display
		puts self
	end

	def self.show #class method
		puts self
	end

end

a = A.new.display
b = A.new.display
A.show