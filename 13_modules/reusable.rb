module Reusable

	class Hello
	  def hello
	  	puts "hello from reusable module class..."
	  end
	end

	module RInstanceMethod
	  attr_accessor :fname, :lname, :age

	  def initialize(fname, lname, age)
	  	@fname = fname
	  	@lname = lname
	  	@age = age
	  end


	  def fullname
	  	@fname + ' ' + lname
	  end

	  def hello
	    puts "hello, #{fullname}"
	  end

	end
	  

	module RClassMethod
  	  def sort_by_attr(arr, attr)
  		arr.sort_by{ |p| p.send(attr) }
  	  end    
	end
  
end