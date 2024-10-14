=begin 

arrays
===================

array is a container so that i can store objects

=end

arr = []
arr1 = Array.new



arr << 99 # like append
# puts arr


# push 

arr.push(19)
arr.push(1)
arr.push(313)
arr.push(47)
arr.push(11)
puts arr.inspect







# pop 

# rem = arr.pop # remove last also return pop element
# puts rem
# puts arr.inspect










# shift --- remove from first

# felem = arr.shift # also return elem
# puts felem
# puts arr.inspect









# unshift --- add to first

# arr.unshift(99)
# puts arr.inspect













# count 

# puts arr.count
arr[5] = nil
puts arr.inspect
arr << 47
puts arr.inspect











# delete 

# arr.delete(nil)
# puts arr.inspect










# all? 

# puts arr.all? { |e| e>11 } # check every elem of arr is greater than 10
# puts arr.all? { |e| e>0 }











# any? 

# puts arr.any? { |e| e>47  }











# at 

puts arr.at(-1)









# clear

b = arr
puts b.inspect
# b.clear
puts b.inspect












# empty? 

puts b.empty?












# collect 

# arr.collect{|e| e*2} # not change the arr
# puts arr.inspect

# arr.collect!{|e| e*2} # use destructive method (!)
# puts arr.inspect















# sum 

# puts arr.sum













# compact 

puts arr.inspect
arr.compact!
puts arr.inspect











# delete if 

arr.delete_if { |e| e==47  }
puts arr.inspect














arr1 = (1..21).to_a
puts arr1.inspect

# shuffle 

arr1.shuffle!
puts arr1.inspect












# drop --- drop first given elem

arr1 = arr1.drop(5)
puts arr1.inspect









# take --- take first given elem

ff = arr1.take(5)
puts ff.inspect










# sort

puts arr1.inspect
arr1.sort!
puts arr1.inspect





arr1 << 21
puts arr1.inspect

# uniq 

arr1.uniq!
puts arr1.inspect











# flatten 

arr1 << [1,2,3]
arr1 << [99,199,31]

puts arr1.inspect
arr1.flatten!
puts arr1.inspect













# shortcut for creating string arr 

str = %W/apple banana cherry graps pineapple/
puts str.inspect








# find --- instance method

puts str.find{|e| e.length>5}












# each_with_object 

evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
puts evens.inspect









# inject 

puts arr1.inspect
sum = arr1.inject{ |acc, y| acc+y }
puts sum









# grep 

out = str.grep(/\A[aeiou]/i)
puts out.inspect



















