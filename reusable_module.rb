=begin 
modules/mixins in ruby
========================
classes
A 		B 		c 		D
methods
100 	100		100		100
repeated methods
20 		20		20 		20

want to remove duplication
we write duplicates methods in A and use it as parent
classes
A 		B 	< 	A,	C 	< 	A, 		D 	< 	A
methods
100 	80			80				80

but the problem arises when classes already inheritance some other class like B < E,A, C < D,A
but ruby dont have multiple inheritance 
so in ruby there is a concept called modules

Modules only consist of methods
classes
kind of multiple inheritance using modules or mixins
A 	< 	P, E,		B 	< 	F, E,		C 	< 	G, E, 		D 	< 	K, E

include E 		include E 		include E 		include E
mthods
80				80				80				80

module E
20 methods

A
include E
80 methods

B
include E
80 methods

C
include E
80 methods


D
include E
80 methods

when we include a module inside a class all the methods of module will become instance methods only
module used as namespace

module XML
	class Document
	end
end

module PDF
	class Document
	end
end

XML::Document
PDF::Document

=end

module Reusable
	class Hey
		def say_hey
			puts "calling method say_hey from Reusable module........."
		end
	end

	# define methods seperately in one module we have instance methods and another we have class methods
	# instance methods
	module RInstanceMethods
		attr_accessor :first_name, :last_name, :age
		def initialize(first_name, last_name, age)
			@first_name = first_name
			@last_name = last_name
			@age = age
		end

		def hello
			puts "hello from person class"
		end

		def fullname
			@first_name + " " + @last_name
		end

		def adult?
			@age >= 18
		end
	end


	# class methods
	module RClassMethods
		def eldest(students)
			students.max_by{ |student| student.age }
		end

		def sort_by_attr(students, attr)
			students.sort_by{ |student| student.public_send(attr) }
		end

		def sort_by_age(students)
			students.sort_by!{ |student| student.age }
		end

		def sort_by_first_name(students)
			students.sort_by!{ |student| student.first_name }
		end

		def sort_by_last_name(students)
			students.sort_by!{ |student| student.last_name }
		end
	end
end