=begin
Hash in ruby
Hash is a collection of unique keys and their values
they are similar to array but array use integer as indexed and hash use any object type
if hash is access with a key that does not exist it returns nil
Reference: https://ruby-doc.org/3.3.7/Hash.html
=end


h = {"india" => "delhi", "australia" => "canberra", "malaysia" => "kuala lampur", "china" => "beijing", "saudia arabia" => "riyadh"}
# puts h.inspect

# h["saudia arabia"] = "dammam"
# puts h["india"]

# h.each { |k, v| puts "#{v} city is a capital of country #{k}" }
# puts h.keys.grep(/^[aeiou]/i)
# puts h.keys
# puts h.values
# puts h.empty?
# h.each_key{|k,v| puts k; puts v.inspect}
# h.each_value{|k,v| puts k; puts v.inspect}
# puts h.fetch("china") #if key is not correct it return error
# puts h.fetch("cHina", "No data") #to handle that use default value as nil
# puts h.fetch_values(:india.to_s, :china.to_s)
# puts h.to_a.inspect
# puts h.to_a.flatten.inspect
# puts h.empty?
# puts h.key?(:australia.to_s)
# puts h.has_key?(:australia.to_s) #same as key?
# puts h.member?(:india.to_s)
# puts h.value?("delhi")
# puts h.has_value?("kuala lampur")
# puts h.include?(:india.to_s)#only key true
# puts h.include?("delhi")#false
# puts h.invert #interchange key to value ans vice versa
# j = {:japan => "Some city"}
# puts h.merge(j)
# h.select! { |country| country.length < 7 }
# puts h.inspect
# puts h.select { |k,v| k =~ /\A[aeiou]/ }
# puts h.reject { |k,v| k =~ /\A[aeiou]/ }
# puts h.shift
# puts h.inspect
h.default = "No data"
# puts h[:abc]
# h.delete(:india)
# puts h.inspect
# h.delete_if { |k,v| v =~ /\s/ }
# h.delete_if { |k,v| k =~ /\s/ }
# puts h.inspect
# puts h.sort.inspect #return arr
# puts h.sort.to_h.inspect #return arr
puts h.take(3).inspect #return arr


# k = {a: 1}
# l = {:a => 1}
# puts k; puts l
