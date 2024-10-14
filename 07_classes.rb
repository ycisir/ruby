=begin

object oriented programming
================================

--- inheritence
--- polymorphism -- method overriding, method overloading (ruby doesn't support this)
--- encapsulation
--- abstraction

=end


# class Car

# 	def start
# 		puts "start by ignition"
# 	end

# end






# # this is inheritence 

# class SedanButtonStart < Car

	
# 	# polymorphism 
# 	# method overriding

# 	def start
# 		puts "start by pressing button"
# 	end





# 	# method overloading

# 	# def sum(int a, int b)
# 	# end

# 	# def sum(str a, str b)
# 	# end

# end


# nissan = SedanButtonStart.new
# nissan.start

















class Test

	# def sum(*a) # any number of args
	# 	puts a.sum
	# end

	def sum(a, b, *c) # min two req
		puts a+b+c.sum
	end

end


t = Test.new

t.sum(1,2)
t.sum(1,3,99)

