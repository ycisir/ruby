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


=end


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