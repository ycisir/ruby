class Person
  # attr_writer :name, :age # setter
  # attr_reader :name, :age # getter

  # shortcut of above
  attr_accessor :fname, :lname, :roll, :age, :city



  # setting required variables

  def initialize(fname, lname, roll, age)
  	@fname = fname
  	@lname = lname
  	@roll = roll
  	@age = age
  end


  def fullname
  	@fname + ' ' + lname
  end


  # checking adult or not for single person we write instance method

  def adult?
  	@age >= 18
  end



  # for lots of object we use class method bcz we cant provide a lot of object args in instance method

  def self.eldest(student)
  	student.max_by{ |s| s.age }

  	



  	# another way  

  	# eldest_student = student.first
  	# student.each do |s|
  	# 	eldest_student = s if s.age > eldest_student.age
  	# end
  	# eldest_student
  



  	

  	# using inject 

  	# student.inject{|s1,s2| s1.age > s2.age ? s1 : s2}


  end







  def self.sort_by_attr(student, attr)
  	student.sort_by{ |s| s.send(attr) } # provide the method name as arg to the obj
  end



end

# p1 = Person.new
# p1.name = "jack"
# p1.age = 33
# puts p1.name
# puts p1.age









# mandatory to provide args here

p1 = Person.new("harry", "potter", 7, 17)
p2 = Person.new("ron", "weasely", 18, 19)
p3 = Person.new("hermoine", "granger", 3, 17)
p4 = Person.new("luna", "good", 22, 19)
p5 = Person.new("draco", "malfoy", 25, 20)
p6 = Person.new("ginny", "weasely", 6, 17)

students_arr = [p1,p2,p3,p4,p5,p6]



# puts p1.inspect

# if p1.adult?
# 	puts "hello, #{p1.fullname} wellcome to houghwarts"
# else
# 	puts "sorry try next year"
# end











# puts Person.eldest(students_arr).inspect






puts Person.sort_by_attr(students_arr, 'roll').inspect













