=begin
strings in ruby
=================
'a' or "a" --- both are strings in ruby

=end



# interpolation 
# single qoutes doesn't support interpolation in ruby

# y = 19
# puts "the value of y is #{y}"
# puts 'the value of y is #{y}'





# length, size 

# str = "jack"


# puts str.methods # gives string methods
# puts str.length
# puts str.size








# upcase, swapcase, capitalize --- it will just return the change value doesn't modify

# puts str.upcase
# puts str
# puts str.reverse









# upcase! --- destructive methods means it will modify the objects

# str.upcase!
# puts str


# str << "sparrow" # appending
# puts str













# clear 

# puts str.empty?
# str.clear
# puts str
# puts str.empty? # gives boolean value











# each_byte --- giving ascii val

# str.each_byte do |x|
# 	puts x 
# end

# str.each_byte { |byte| puts byte  }







# each line

# str = "hello\nworld!"
# str.each_line { |line| puts line }










# sub, gsub

str = "Hello World!"
# str.sub!("l","k") # affect only first occurence
# puts str



# str.gsub!("l","h") # for all occurence
# puts str

# str.gsub!(/\s/, "@")
# puts str













# include? 

# puts str.include?("hello")












# inspect 

# arr = [1,99,19,47,33,313]
# puts arr.inspect # gives the value in human readable form









# count 

# puts str.count("l")
# puts str.count("lo") # 3l+2o = 5








# delete 
# str.delete!("lo")
# puts str












# scan 

# puts str.scan("h")
# puts str.scan(/[A-Z]/)
















# to_sym --- symbols
# sysmbols are just like string but symbols save a lot memory instead of creating new memory
# it will modify 

# puts str.to_sym.inspect
# puts str.intern.inspect #same as above


# in case of string it will allocate new memory every time
str = "Hello"
puts str.object_id # gives 60
str = "Hello"
puts str.object_id # gives 80




# but when we use symbols it will not allocate new memory the just modify
sym = :hi
puts sym.object_id # gives 1340188
sym = :hi
puts sym.object_id # gives 1340188










