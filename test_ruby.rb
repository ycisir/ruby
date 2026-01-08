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
