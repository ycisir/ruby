=begin


Arrays in Ruby
==============================

Array is a container so that I can store objects
Collection of objects
In Ruby it can hold any type of objects like int string float arr hash etc


this is the refence of ruby docs for array methods there is a lot to see
Reference: https://docs.ruby-lang.org/en//3.3/Array.html


a = []
a1 = Array.new

puts a.class
puts a.inspect


arr = [1, 23.34, true, "ruby", {}]
puts arr[-5]
puts arr.size
puts arr.length
puts arr.count



arr.each do |x|
	puts x
end

arr.each_index do |x|
	puts x
end




a = [1, 23.34, true, "ruby", {}]
b = [7,9,33.1, 23.34]

puts (a+b).inspect
puts (a-b).inspect # remove common values







a = []

a << 1
a << 99

puts a.inspect







arr = (1..20).to_a
arr.shuffle!
puts arr.inspect
deleted = arr.shift # remove and return first element

arr.unshift(1) # insert element at first index
puts arr.inspect 


arr.push(99) # insert element at last index
puts arr.inspect 

arr.pop # remove last index element
puts arr.inspect

=end
