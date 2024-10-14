=begin 

exception handling
=====================

=end

x=10

begin
  
  until x==-1
  	puts 100/x
  	x-=1
  end

rescue => e
	# catch the exception
	puts e.message
	puts e.backtrace
end