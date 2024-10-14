=begin 

regular expressions
======================

pattern matching
can be apply only on string

=end


# str = "jack sparrow"
# puts str =~ /\s/ # finding the position of space


# reference
# rubular.com


# username = "jack_sparrow"

# if username =~ /[^A-Za-z0-9_.]/
# 	puts "invalid"
# else
# 	puts "valid"
# end











date = "03-10-2024"

# if date =~ /\A(\d{2})-(\d{2})-(\d{4})$/
# 	puts $1
# 	puts $2
# 	puts $3
# end








# using match method 

# if date.match(/\A(\d{2})-(\d{2})-(\d{4})$/)
# 	puts $1
# 	puts $2
# 	puts $3
# end



x = date.match(/\A(\d{2})-(\d{2})-(\d{4})$/)
puts x.inspect
puts x.captures.inspect
puts x[1]
puts x[2]
puts x[3]