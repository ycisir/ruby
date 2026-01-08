=begin

Strings in Ruby
================================

Reference: https://docs.ruby-lang.org/en//3.3/String.html

there is no data types in ruby as char also
str = 'c'
str = "abcd"
#both are string
=end


# interpolation
name = "Jack"

puts "name is #{name}"
puts 'name is #{name}' # not support interpolation with single qoute

puts name.length
puts name.size
# puts name.methods #show all string methods

puts name.upcase # not modify the object just return upper case value
puts name.swapcase

# destructive methods (!)
puts name.upcase! # modify the object and return upper case value

puts name.capitalize!

puts name.reverse



# these all are methods
puts "Hey, " + name #just print

# name << " Sparrow" # modify the object
name.concat(" Sparrow") # modify the object
puts name

puts name == "Jack"

# name.clear # clear string
puts name.empty? #methods ending with ? return bool value

puts name[-1]
puts name[1]

name.each_byte { |b| puts b }
name.each_char { |c| puts c }

pref = "Captain "
name.insert(0, pref)
puts name

# sub, gsub, gsub!
# inspect --- show in human readable form
str = "Hello World"

puts str.inspect

puts str.sub("l","k") #only affect first occurence -> Heklo World
# puts str.sub!("l","k") #modify object
puts str.gsub("l","k") #affect all occurence -> Hekko Workd
# puts str.gsub!("l","k") #modify object
# puts str

puts name.include?("Jack")
puts name.include?("Captain")

puts name.partition("Sparrow").class #return arr
# puts name.partition(" ").inspect
puts name.partition(/\s/).inspect
puts name.partition(/[A-Z]/).inspect

arr = name.split(" ")
# collect and map have same functionality in ruby these are arr methods
first_letter = name.split(" ").collect{ |word| word[0] }
puts arr.inspect
puts first_letter.inspect

puts name.count("a")
# puts name.delete("tain")
# puts name.delete!("tain")

puts "you're here------------"
puts name.scan(/[A-Z]/).inspect

puts name.slice(0..6)

# num = "99".to_i
# num = "99".to_f
# num = "99".to_c
# puts num + 1



# :name #symbol
# symbols are just like strings
# symbols are memory efficient
# symbols are immutable
# reusability

str = "hey"
puts str.class
# str object id change each time
puts str.object_id
str = "hey"
puts str.object_id
str = "hey"
puts str.object_id

sym = :hi
puts :hi.class
# symbol object id remain same (unique object id)
puts :hi.object_id
sym = :hi
puts :hi.object_id
sym = :hi
puts :hi.object_id



=begin

Regular expression
===========================
Reference: https://rubular.com/
pattern matchin apply on strings
regex always written between / here /
only apply on String
=end



username_regex = /^[a-z0-9_.]{3,16}$/

vallid_username1 = "jack"
vallid_username2 = "jack_sparrow"
vallid_username3 = "jack.sparrow"
vallid_username4 = "jack123"
vallid_username5 = "jack_sparrow123"
vallid_username6 = "jack.sparrow123"

puts vallid_username1.match?(username_regex)
puts vallid_username2.match?(username_regex)
puts vallid_username3.match?(username_regex)
puts vallid_username4.match?(username_regex)
puts vallid_username5.match?(username_regex)
puts vallid_username6.match?(username_regex)

# str = "hey ruby developer"
# puts str =~ /\s/ # return index of whitespace
