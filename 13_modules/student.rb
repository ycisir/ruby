# require_relative "person"
# require "./person"
# load './person.rb' # doesn't cache file in memory so we dont use it more
require "./reusable"


class Student

  # for avoiding name conflicts
  include Reusable::RInstanceMethod #use for instance method for the class (include)
  extend Reusable::RClassMethod #use for class method for the class (extend)


  attr_accessor :stud_id, :dept, :admission_year

  def initialize(fname, lname, age, stud_id, dept)
    super(fname, lname, age)
    @stud_id = stud_id
    @dept = dept
  end

  def student_info
    puts "Name: #{fullname}"
    puts "Id: #{stud_id}"
    puts "Age: #{age}"
    puts "Department: #{dept}"
    puts "Admission Year: #{admission_year}"
  end

end


stud1 = Student.new("harry", "potter", 17, 7, "garud dwar")
stud2 = Student.new("ginny", "weasely", 16, 6, "garud dwar")
stud3 = Student.new("hermoine", "granger", 17, 3, "garud dwar")
stud4 = Student.new("draco", "malfoy", 17, 20, "nag shakti")
stud5 = Student.new("ron", "weasely", 17, 18, "garud dwar")

students_arr = [stud1,stud2,stud3,stud4,stud5]
# puts students_arr.inspect

puts "---"*10
puts "student informations"
puts "==="*9

students_arr.each do |s|
  s.student_info
  puts "---"*9
end

# puts Student.sort_by_attr(students_arr, 'fname').inspect
# puts Student.sort_by_attr(students_arr, 'stud_id').inspect



# :: --- scope resolution operator
# its like c++ namespace
Reusable::Hello.new.hello