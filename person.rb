class Person
	# if we call method on single object so we use create instance method
	# but if we want to call method on multiple objects we use class method

	# setter and getter
	attr_accessor :first_name, :last_name, :age, :city

	@@breadth = true

	def initialize(first_name, last_name, age)
		@first_name = first_name
		@last_name = last_name
		@age = age
	end

	def hello
		puts "hello from person class"
	end

	def is_alive?
		@@breadth
	end

	def fullname
		@first_name + " " + @last_name
	end

	def adult?
		@age >= 18
	end


	def self.eldest(students)
		# many ways to solve the problem
		# 1
		students.max_by{ |student| student.age }

		# 2
		# eldest_student = students.first
		# students.each do |student|
		# 	eldest_student = student if student.age > eldest_student.age
		# end

		# eldest_student

		# 3
		# students.inject{ |student1, student2| student1.age > student2.age ? student1 : student2 }
	end

	def self.sort_by_attr(students, attr)
		# methods that cover all below methods
		# dont use send directly use public_send
		students.sort_by{ |student| student.send(attr) }
	end

	# def self.sort_by_age(students)
	# 	students.sort_by!{ |student| student.age }
	# end

	# def self.sort_by_first_name(students)
	# 	students.sort_by!{ |student| student.first_name }
	# end

	# def self.sort_by_last_name(students)
	# 	students.sort_by!{ |student| student.last_name }
	# end

	# same as below getter and setter methods
	# setter
	attr_writer :name, :age
	# reader
	attr_reader :name, :age

	# setter
	# def name=(name)
	# 	@name = name
	# end

	# def age=(age)
	# 	@age = age
	# end

	# getter
	# def name
	# 	@name # return
	# end

	# def age
	# 	@age # return
	# end
end

john = Person.new
abdul = Person.new

john.name = "John"
john.age = 34
abdul.name = "Abdul"
abdul.age = 24

puts john.inspect
puts abdul.inspect

puts john.name
puts john.age

# p1 = Person.new("Harry", "Potter", 18)
# p2 = Person.new("Ron", "Weasely", 19)
# p3 = Person.new("Hermoine", "Hranger", 18)
# p4 = Person.new("Draco", "Malfoy", 20)
# p5 = Person.new("Ginny", "Weasely", 17)
# students = [p1,p2,p3,p4,p5]

# puts p1.fullname
# puts p1.is_alive?
# puts Person.eldest(students).inspect
# puts Person.sort_by_first_name(students).inspect
# puts Person.sort_by_age(students).inspect
# puts Person.sort_by_attr(students, "first_name").inspect
# puts Person.sort_by_attr(students, "age").inspect