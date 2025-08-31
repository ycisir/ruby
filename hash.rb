=begin

hash in ruby
====================

hash is a collection of unique keys and their values

they are similar to array but array use integer as indexed and hash use any object type

if hash is access with a key that does not exist it returns nil

=end


h = {"india" => "delhi", "australia" => "canberra", "malaysia" => "kuala lampur", "china" => "beijing", "saudia arabia" => "riyadh"}

# puts h.inspect

# h["saudia arabia"] = "dammam"

# puts h.inspect
# puts h["india"]


# h.each { |k, v| puts "#{v} city is a capital of country #{k}" }

# puts h.keys.grep(/^[aeiou]/i)

# puts h.keys
# puts h.values

# puts h.empty?



# h.each_key{|k,v| puts k; puts v.inspect}
# h.each_value{|k,v| puts k; puts v.inspect}





# k = {a: 1}

# l = {:a => 1}

# puts k; puts l







# puts h.fetch("china") #if key is not correct it return error
# puts h.fetch("cHina", "No data") #to handle that use default value as nil



# puts h.fetch_values(:india.to_s, :china.to_s)