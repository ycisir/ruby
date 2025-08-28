=begin

methods in Ruby
=================================

there are two types of methods

1) instance methods
2) class methods


Concept of polymorphism
Method overloading
Method overriding


Ruby does not support method overloading
Ruby supports overriding




# method overloading
# its not support in ruby
# when we create method with same name but with different parameters or different parameter types is called method overloading

ex:

def sum(int x, int y)
end

def sum(int x, int y, int z)
end

def sum(flaot x, flaot y, flaot z)
end
	
=end




class Person
	
	def greeting
		puts "--"*10
	end

	# def sum(*a)
		# a.inspect
		# a.class #arr
		# a.sum
	# end

	# def sum(a, b, *c)
	# 	a + b + c.sum
	# end


	# def sum(a, b, c=100)
	# 	a + b + c
	# end

	# def sum(a, b, *c, d)
	# 	# * means 0 or multiple
	# 	a + b + c.sum + d
	# end

	def sum(a, b=1, *c, d, e)
		puts a.inspect
		puts b.inspect
		puts c.inspect
		puts d.inspect
		puts e.inspect
	end

end


p1 = Person.new
p1.greeting
# puts p1.sum(1,2)
# puts p1.sum(1,99,19)
# puts p1.sum(1,99,19,12,21)
puts p1.sum(1,99,19,12) # fill value right to left means <---