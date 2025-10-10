=begin 
require "date"
require "./person" #provide like this ./person shortcut of this is above

# require_relative "person"
# load "./person.rb" #specific say filename and does not cache in memory

class Employee < Person
	attr_accessor :empid, :dept, :yoj

	def initialize(first_name, last_name, age, dept, yoj, salary)
		super(first_name, last_name, age)
		@dept = dept
		@yoj = yoj
		@salary = salary
	end

	def hello
		puts "hello from employee class"
	end

	def eligible_for_perk?
		Date.today.year - @yoj >= 10
	end

	def good_salary?
		@salary > 15_00000
	end

	def self.highest_paid(employees)
		employees.max_by{|employee| employee.salary}
	end

	def self.sort_by_dept(employees)
		employees.sort_by!{|employee| employee.dept}
	end

	def self.sort_by_yoj(employees)
		employees.sort_by!{|employee| employee.yoj}
	end

	def self.sort_by_salary(employees)
		employees.sort_by!{|employee| employee.salary}
	end
end


emp1 = Employee.new("Harry", "Potter", 18, "CSE", 1999, 25_00000)
emp2 = Employee.new("Ron", "Weasely", 18, "CSE", 2001, 21_00000)
emp3 = Employee.new("Long", "Bottom", 21, "Civil", 2003, 15_00000)
emp4 = Employee.new("Hermoine", "Hranger", 18, "CSE", 1999, 23_00000)
emp5 = Employee.new("Draco", "Malfoy", 20, "Mechanical", 2011, 14_00000)
emp6 = Employee.new("Ginny", "Weasely", 17, "CSE", 2003, 19_00000)
emp7 = Employee.new("Luna", "Lovegood", 18, "ELEC", 2003, 18_00000)
emp_arr = [emp1, emp2, emp3, emp4, emp5, emp6, emp7]

# puts Employee.eldest(emp_arr).inspect

# puts emp1.inspect
# puts emp1.fullname

# puts emp1.eligible_for_perk?
# puts emp5.good_salary?
puts emp1.fullname

=end


# using module here 
# =================================
require "date"
require "./reusable_module"

class Employee
	# include is for using methods of the module as instance methods in the class
	# extend is for using methods of the module as class methods in the class
	include Reusable::RInstanceMethods #instance methods (:: --- scope resolution operator)
	extend Reusable::RClassMethods #class methods

	def initialize(first_name, last_name, age, dept, yoj, salary)
		super(first_name, last_name, age)
		@dept = dept
		@yoj = yoj
		@salary = salary
	end

	def eligible_for_perk?
		Date.today.year - @yoj >= 10
	end

	def good_salary?
		@salary > 15_00000
	end

	def self.highest_paid(employees)
		employees.max_by{|employee| employee.salary}
	end

	def self.sort_by_dept(employees)
		employees.sort_by!{|employee| employee.dept}
	end

	def self.sort_by_yoj(employees)
		employees.sort_by!{|employee| employee.yoj}
	end

	def self.sort_by_salary(employees)
		employees.sort_by!{|employee| employee.salary}
	end
end

emp1 = Employee.new("Harry", "Potter", 18, "CSE", 1999, 25_00000)
emp2 = Employee.new("Ron", "Weasely", 18, "CSE", 2001, 21_00000)
emp3 = Employee.new("Long", "Bottom", 21, "Civil", 2003, 15_00000)
emp4 = Employee.new("Hermoine", "Hranger", 18, "CSE", 1999, 23_00000)
emp5 = Employee.new("Draco", "Malfoy", 20, "Mechanical", 2011, 14_00000)
emp6 = Employee.new("Ginny", "Weasely", 17, "CSE", 2003, 19_00000)
emp7 = Employee.new("Luna", "Lovegood", 18, "ELEC", 2003, 18_00000)

emp_arr = [emp1, emp2, emp3, emp4, emp5, emp6, emp7]

# puts emp1.fullname #instance method calling
# puts Employee.eldest(emp_arr).inspect #class method calling
puts Employee.included_modules
# calling say_hey method in this file
# Reusable::Hey.new.say_hey