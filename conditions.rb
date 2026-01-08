=begin
conditional statements in Ruby

1) if
2) unless (opposite of -- if)
3) if-else
4) unless-else
5) if-elsif-else
6) terinary
=end
x = 100

if x == 100
	puts "X is 100"
end

puts "X is 100" if x == 100

if x == 101
	puts "X is 100"
else
	puts "X is not 100"
end

x = 200
	
if not (x == 200)
	puts "X is not 200"
else
	puts "X is 200"
end

# same as above not
if !(x == 200)
	puts "X is not 200"
else
	puts "X is 200"
end

# same as above not
unless (x == 200) 
	puts "X is not 200"
else
	puts "X is 200"
end

puts "X is 200" unless x == 200

x = 10
y = 20
z = 15

if x>y && x>z
	puts "X is greatest"
elsif y>x && y>z
	puts "Y is greatest"
else
	puts "Z is greatest"
end

# puts y > 10 ? "Y is greater than 10" : "Y is less than 10"
output = y > 10 ? "Y is greater than 10" : "Y is less than 10"
puts output

print "Enter the $: "
dollar_amount = gets.chomp
# puts dollar_amount.class
# puts dollar_amount.inspect # without chomp we get \n
dollar_amount = dollar_amount.to_i

print "Exchange with currency yen, inr etc: "
currency = gets.chomp
currency = currency.downcase

exchange_rate_inr = 83
exchange_rate_yen = 3
exchange_rate_dinar = 5

case currency
when 'yen'
	puts dollar_amount * exchange_rate_yen
when 'inr'
	puts dollar_amount * exchange_rate_inr
when 'dinar'
	puts dollar_amount * exchange_rate_dinar
else
	puts "Invalid input"
end

=begin

looping statements in Ruby
================================

1) while -- execute when condition true
2) until (opposite to while) execute when condition false
3) for
4) each
5) upto
6) downto
7) times
8) loop

for, each -- used only on collections(array, hashes)
upto, downto, each, times --- all these are methods
=end

i = 1
while i <= 10
	puts "#{i}"
	i += 1
end

i = 1
until i > 10
	puts "#{i}"
	i += 1
end

# r = (1..10).to_a
r = ["apple", "banana", "pineapple"]
for i in r
	puts i
end

arr = ["apple", "banana", "pineapple"]
arr.each do |x|
	puts x
end
# from do - end are called blocks in ruby
# |x| here x is called block variable

# same as above
arr.each { |x| puts x  }

arr = ["apple", "banana", "pineapple"]
x = 100
arr.each { |i, j, k| puts i; puts x; puts j.inspect; puts k.inspect }

1.upto(10) do |x|
	puts x
end

10.downto(1) do |x|
	puts x
end

"a".upto("k") do |c|
	puts c
end

10.times do |i|
	puts i
	puts "hey"
end

i = 1
loop do
	break if i == 5
	puts "hey"
	#i++ ruby does not support pre/post increment and decrement
	i += 1
end
