=begin
x = [{"a" => 10},{"b" => 20},{"c" => 30}]

# We need the following
# 1. one array containing all keys
# 2. another array containing all values
# 3. the sum of all the values
# Example
# ["a", "b", "c"]
# [10, 20, 30]
# 60

key_arr = []
val_arr = []
x.each do |h|
  h.each do |k,v|
    key_arr << k
    val_arr << v
  end
end

puts key_arr.inspect
puts val_arr.inspect
puts val_arr.sum

=end







# Tip: For every problem, try to write a "verbose" version using each and a "concise" version using Enumerable methods


# ================= Filtering & Selecting =====================

# 1. Select evens

# traditional
# arr = (1..20).to_a
# puts arr.inspect

# even_nums = []
# arr.each do |a|
#   even_nums << a if a%2 == 0
# end

# puts even_nums.inspect


# enumerable
# even_nums = arr.select{ |a| a.even? }
# puts even_nums.inspect









# 2. reject short strings
# str = ["cat", "apple", "hey", "dog", "elephant"]

# traditional
# long_string = []
# str.each do |s|
#   long_string << s if s.size > 3
# end

# puts long_string.inspect




# enumerable
# long_string = str.reject{ |s| s.size <= 3 }
# puts long_string.inspect






# 3. find first condition
# str = ["cat", "apple", "hey", "dog", "elephant"]

# first_long_string = []
# str.each do |s|
#   first_long_string << s if s.size > 3
#   break if first_long_string.size == 1
# end

# puts first_long_string




# first_long_string = str.find{ |s| s.size > 3 }
# puts first_long_string







# 4. check any negative
# arr = [10, 5, -2, 8, -1]
# is_negative = false
# arr.each do |a|
#   # puts a
#   is_negative = true if a <= 0
#     break if is_negative
# end

# puts is_negative



# is_negative = arr.any? { |a| a < 0 }
# puts is_negative









# 5. check all positive
# arr = [10, 5, -2, 8, -1]

# all_positive = true
# arr.each do |a|
#   all_positive = false if a <= 0
# end

# puts all_positive



# all_positive = arr.all? { |a| a >= 0 }
# puts all_positive















# 6. count > 50
# arr = [10, 60, 45, 55, 30, 80]
# count = 0

# arr.each do |a|
#   count += 1 if a > 50
# end





# count = arr.count { |a| a > 50 }

# puts count










# 7. filter hash values
# data = { "a" => 10, "b" => 60, "c" => 45, "d" => 80 }

# filtered_data = {}
# data.each do |key, value|
#   filtered_data[key] = value if value > 50
# end

# filtered_data = data.select { |k,v| v > 50 }
# puts filtered_data









# 8. partition arrays
# arr = [10, 60, 45, 55, 30, 80]
# odds = []
# evens = []
# arr.each do |a|

#   if a % 2 == 1
#     odds << a
#   else
#     evens << a
#   end

# end

# result = [odds, evens]
# puts result.inspect





# puts arr.partition { |a| a % 2 == 1 }.inspect # partition by odd nums










# 9. find nil indices
# arr = [10, 60, 45, nil, 55, 30, nil, 80, nil]
# nil_index = []

# arr.each_with_index do |e, i|
#     nil_index << i if e.nil?
# end



# nil_index = arr.each_index.select { |i| arr[i].nil? }

# puts nil_index.inspect









# 10. select primes
arr = (1..31).to_a
# prime_nums = []

# arr.each do |e|
#   if e > 1
#     is_prime = true
#     (2..Math.sqrt(e)).each do |divisor|
#       if e % divisor == 0
#         is_prime = false
#         break
#       end
#     end
#     prime_nums << e if is_prime
#   end
# end


require "prime"
prime_nums = arr.select { |e| e.prime? }

puts prime_nums.inspect