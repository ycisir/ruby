=begin
Ruby blocks
==============================

blocks are nameless methods/functions
closures (function within a function) / callback
want to call block we have to use keyword (yield)

there two types of blocks
regular we use in scripting but if want to use block in methods we have these two

1) proc
2) lamda

# arr = (1..10).to_a
# puts arr.each # return enumerator object
# arr.each { |e| puts e  } # {blocks}

arr.each do |args|
	puts args
end

class Test
	# def disp(x)
		# puts "-------#{x}"
		# yield if block_given? # always use this if provide block with any function 
		# if fail to pass block but call yield it throw an error so use above condition to handle them
		# this will check if block is given with this method or not
	# end

	def disp(&block)
		puts "-----------"
		# yield(1,99) if block_given?
		block.call(1,2,3) if block_given?
	end

	def sum(a, b, &block)
		func_sum = a + b
		block_ans = block.call(100,200,300)
		sum = func_sum + block_ans
		puts sum
	end
end

t = Test.new
# t.disp(1) { puts "hey, from block" }
# t.disp(99)
# t.disp { |x| puts x }
# t.disp {|x, y, z| puts x; puts y; puts z.inspect} # x,y is a block arguments
# t.disp{|x,y,z| puts x; puts y; puts z}
# t.disp

t.sum(1,99) do |x,y,z|
	# puts x
	# puts y
	# puts z
	x + y + z
end

=end

# p = Proc.new{|x,y| puts "this is proc" }
# l = lambda{|a,b| puts "this is lambda" }
# l = ->(a,b) { puts "this is lambda #{a} #{b}" }

# p.call(1,2,3)
# l.call(1,2)

# difference between Procs and lambda
# Proc do not care about the argument or number of arguments passed to it
# lambda strict on number of arguments 

# Proc or lambda defined inside a method with return keyword
# def proc_return
# 	p = Proc.new{return "Proc is being called inside the method"}
# 	p.call
# 	return "PROC METHOD RETURN"
# end

# def lambda_return
# 	l = lambda{return "lambda is being called inside the method"}
# 	final_str = l.call
# 	return final_str + " LAMDA METHOD RETURN"
# end

# puts proc_return
# puts lambda_return


# Proc or lambda defined outside a method with return keyword
# dont use this it return nothing

p = Proc.new{return "Proc is being called inside the method"}
def proc_return(proc)
	proc.call
	return "PROC METHOD RETURN"
end

# l = lambda{return "lambda is being called inside the method"}
# def lambda_return(lambd)
# 	final_str = lambd.call
# 	return final_str + " LAMDA METHOD RETURN"
# end

puts proc_return(p)
# puts lambda_return(l)