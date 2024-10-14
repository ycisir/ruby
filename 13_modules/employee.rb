require_relative "person"

class Employee < Person
  attr_accessor :emp_id, :dept, :year_of_join

  def initialize(fname, lname, age, emp_id, dept)
    super(fname, lname, age)
    @emp_id = emp_id
    @dept = dept
  end

  def hello
    super
    puts "hello from employee class"
  end

end


emp1 = Employee.new("harry", "potter", 17, 7, "garud dwar")
puts emp1.fullname
emp1.hello