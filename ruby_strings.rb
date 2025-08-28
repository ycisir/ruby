=begin

Strings in Ruby
================================

Reference: https://docs.ruby-lang.org/en//3.3/String.html

there is no data types in ruby as char also
str = 'c'
str = "abcd"

both are string




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


puts name.capitalize




# these all are methods

puts "Hey, " + name #just print

name << " Sparrow" # modify the object
puts name


puts name == "Jack"


name.clear # clear string

puts name.empty? #methods ending with ? return bool value





# sub, gsub, gsub!
# inspect --- show in human readable form





# :name #symbol

# symbols are just like strings
# symbols are memory efficient
# symbols are immutable


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
# symbol object id remain same
puts :hi.object_id
sym = :hi
puts :hi.object_id
sym = :hi
puts :hi.object_id


=end




=begin

Regular expression
===========================
Reference: https://rubular.com/
pattern matchin apply on strings
regex always written between / here /

=end


username_regex = /^[a-z0-9_.]{3,16}$/

vallid_username1 = "jack"
vallid_username2 = "jack_sparrow"
vallid_username3 = "jack.sparrow"
vallid_username4 = "jack123"
vallid_username5 = "jack_sparrow123"
vallid_username6 = "jack.sparrow123"

puts vallid_username1.match?(username_regex)

# str = "hey ruby developer"
# puts str =~ /\s/ # return index of whitespace