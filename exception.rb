=begin
exception handling
=end

# x = 10
# until x == -1
# 	puts 100/x
# 	x -= 1
# end

x = 10

def sum(x)
end

begin
	# error prone code
	# sum
	# sum(0)
	until x == -1
		puts 100/x
		x -= 1
	end
rescue ArgumentError => e # specific (by user)
	puts e.message
	puts "standard error raised"
rescue => e # default rescue will always be at last (generic)
	# catch the exception
	puts e.message
	puts e.backtrace
ensure
	# the code written here executes
	# irrespective of an exception occured or not
	puts "this always executes"
end