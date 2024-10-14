=begin

block
===================
block is like a closures in js means func inside func


=end


# class Block

  #1

  # def greet(name)
  # 	# puts "Hello #{name}"
  # 	yield if block_given? # remember to use this if use block
  # end






  #2

  # def greet
  # 	yield("jack") if block_given? # remember to use this if use block
  # end







  #3

  # def greet(&block)
  # 	block.call("jack")
  # end








  #4

  # def sum(a, b, &block)
  # 	c = a+b 
  # 	d = block.call(1,2,3)
  # 	puts c+d
  # end




# end # class ends here






# obj

# t = Block.new








#1

# t.greet("barbosa"){ puts "Hello from block!" }
# t.greet("jack")










#2 

# t.greet{|n| puts "Hello #{n}"}











#3

# t.greet{|n| puts "Hello #{n}"}












#4

# t.sum(100,200) do |x,y,z| 
# 	x+y+z
# end
















# types of blocks

# 0--- regular --- above we see regular Block
# 1--- procs
# 2--- lambdas


# p = Proc.new{ puts "this is Proc" }
# l = lambda { puts "this is lambda" }

# p.call
# l.call










# differences between above two 

# p = Proc.new{ |x,y| puts "this is Proc" }
# l = lambda { |x,y| puts "this is lambda" }


# p.call # proc donot care about the number of arguments or num of args pass to it
# l.call(0,0)















# defined inside method with return keyword in it

# def proc_return
#   p = Proc.new{ return "proc is being called inside the method" }
#   p.call
#   return "PROC METHOD RETURN"
# end


# def lambda_return
#   l = lambda{ return "lambda is being called inside the method" }
#   l.call
#   return "LAMBDA METHOD RETURN"
# end


# puts proc_return
# puts lambda_return













# defined outside method with return keyword in it

# dont use it like this

p = Proc.new{ return "proc is being called inside the method" }
def proc_return(proc)
  proc.call
  return "PROC METHOD RETURN"
end





# always use lambda 

l = lambda{ return "lambda is being called inside the method" }
def lambda_return(l)
  final_str = l.call
  return final_str + " LAMBDA METHOD RETURN"
end


# puts proc_return(p) # do nothing return out from method
puts lambda_return(l)




































