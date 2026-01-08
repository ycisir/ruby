=begin
Arrays in Ruby
Array is a container so that I can store objects
Collection of objects
In Ruby it can hold any type of objects like int string float arr hash etc
Whenever we use array method we confuse about destructive methods simple if it is written in block will have destructive(!) method also

this is the refence of ruby docs for array methods there is a lot to see
Reference: https://docs.ruby-lang.org/en//3.3/Array.html

a = []
tmp = Array.new
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
=end

arr = (1..5).to_a
arr << 1 #same as push
arr << 99
# arr.shuffle!
arr.shift # remove and return first index element
arr.unshift(47) # insert element at first index
arr.push(99) # insert element at last index
arr.pop # remove and return last index element
# puts arr.inspect
# puts arr.length
arr[5] = 99
arr[7] = 19
# arr.delete(nil) #delete only one element
# puts arr.all? { |x| x > 0 }
# puts arr.any? { |x| x > 99 }
# puts arr.at(0)
# puts arr.at(-1)
# tmp = arr #deep copy
# tmp.clear
# puts tmp.empty?
# puts arr.empty? #this also empty
# arr.collect! { |x| x * 99 } #aliased of map
# puts arr.sum
# puts arr.count(9801) #count how many number of times given num repeat
# arr[2] = nil
# arr[6] = nil
# arr[10] = nil
# arr.compact! #remove nil object in entire arr
# arr.sum #error bcz nil
# puts arr.sum
# arr.delete_at(-2)
# arr.delete_if { |x| x % 2 == 0 }
# puts arr.drop(2).inspect
# puts arr.take(3).inspect
# puts arr.select { |x| x % 2 != 0 }.inspect
# puts arr.select { |x| x > 47 }.inspect
# puts arr.reject { |x| x > 47 }.inspect #opposite of select
# arr1 = []
# arr.replace(arr1)
# puts arr1.inspect
# puts arr.reverse.inspect
# sub_arr = arr.slice(1..4)
# sub_arr = arr[1..4] #same as slice
# puts sub_arr.inspect
# arr.sort! #ascending order
# arr.sort! { |x, y| y <=> x } #descending order (spaceship operator)
# arr.uniq! #remove duplicates
# dont use combination and permutation method in rails code it will hange
# arr.combination(2) {|combination| p combination }
# puts arr.max
# puts arr.min
# arr << (33..39).to_a
# arr.flatten! #convert arr into 1 dimensional arr or vector
# country = %W/Japan Turkiye Australia England Finland/ #shortcut for creating string arr
# puts country.find { |c| c.length > 4 } #included enumerable module methods
# puts country.find_all { |c| c.length > 7 }.inspect
# puts country.include? "Japan"
# tmp = country.inject { |acc, y| acc.length > y.length ? acc : y }
# puts tmp
# puts arr.inject { |sum, a| sum + a } # inject is aliase of reduce
# puts country.inspect
# puts arr.inspect
# evens = (1..4).each_with_object([]) {|i, a| a << i*2 }
# puts evens.inspect
# hash1 = {foo: 0, bar: 1, baz: 2}.each_with_object({}) {|(k, v), h| h[v] = k }
# puts hash1.inspect
# puts arr.first
# puts arr.last
# puts arr.methods #return all methods
# puts arr.nil?
# puts arr.methods.grep(/!$/) #return all destructive(!) methods
# grep is array method and match is a string method you cant apply vice versa
# puts arr.partition { |x| x % 2 == 0 }.inspect #partition by even
# puts arr.partition { |x| x % 2 == 1 }.inspect #partition by odd
# arr3 = [[1,2], [3,4], [5,6]]
# puts arr3.to_h.inspect #{1=>2, 3=>4, 5=>6}
arr4 = (1..20).to_a
arr4.shuffle!
puts arr4.inspect
puts arr4.take_while { |x| x > 3 }.inspect #take until condition true