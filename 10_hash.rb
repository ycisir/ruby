=begin 

hash
=================
for storing key, value pairs
key is unique in hash


=end


h = {"india" => "delhi", "china" => "beijing", "malaysia" => "kuala lumpur", "pakistan" => "karachi"}
h["turkey"] = "istanbul"
h.each { |k, v| puts "#{k} capital is #{v}" }

puts h.keys.inspect



h1 = {name: "jack", ship: "black pearl"}
h1.default = "no data"
puts h1[:age]