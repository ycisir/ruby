=begin
	
looping statements
===========================
while --- most used
until 
for 
each --- most used
upto
downto
times --- most used
loop 

=end


# for, each --- used only on collections(arrays, hashes, range)
# upto, downto, each, times --- all are methods 

# while 

# i = 1
# while i<=10
# 	print "#{i} "
# 	i+=1
# end
# puts ""











# until  

# i=1
# until i>10
# 	puts i 
# 	i+=1	
# end










# range 

# r = (1..10) # include 10

# (...) exclude last one
# (..) include last one 

# r = ("A".."z")
# print r.to_a
# puts ""











# each 
# from do - end is called a block in ruby

# arr = ["apple", "banana", "cherry"]
# arr.each do |x|
# 	puts x # here x is a block variable
# end


# arr.each{|x| puts x} # same as above	










# upto 
# first one should be lesser than another one

# 1.upto(10) do |n|
# 	puts n
# end










# downto 

# 10.downto(1) do |n|
# 	puts n
# end















# times 

# 10.times do |x|
# 	print "#{x} "
# 	puts "hello world!"
# end













# loop
# like a infinite loop until condition is satisfied

# i = 1

# loop do 
# 	puts i 
# 	break if i==5
# 	i+=1
# end



# note --- ruby does not support post/pre increment operators like java, c, and c++