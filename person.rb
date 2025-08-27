class Person

	# setter
	def name=(name)
		@name = name
	end

	def set_age(age)
		@age = age
	end

	# getter
	def name
		@name # return
	end

	def get_age
		@age # return
	end

end

john = Person.new
abdul = Person.new

john.name = "John"
john.set_age(34)
abdul.name = "Abdul"
abdul.set_age(24)


# puts john.inspect
# puts abdul.inspect

puts john.name
puts john.get_age

puts abdul.name
puts abdul.get_age