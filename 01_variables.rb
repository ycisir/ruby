=begin
	
	variables in ruby
	=======================

	1- global variables --- start with $ sign, these variables have scope globally throughout the application
	2- local variables --- start wirht lowercase or (underscore), these variables have scope locally in a method, block of code or class defination
	3- class variables --- start wirht @@, these have scope only in the class defined, outside the class they have no scope
	4- instance variables --- start with @ sign, these variables are used to create attributes on an object
	5- CONSTANT --- start with capital letters, these are also global variables, they mean that the value remiains constant
	
=end


class VariableScope

	$global_var = "Global Variable"
	local_var = "Local Variable"
	@@class_var = "Class Variable"
	@instance_var = "Instance Variable"
	CONST = "CONSTANT Variable"

	# puts local_var

	# there are two methods  
	# instance method
	def disp_var
		puts $global_var
		local_var1 = "Local Variable inside method"
		puts local_var1
		puts @@class_var
		puts @instance_var # don't have scope in instance method
		puts CONST
	end

	# class method
	def VariableScope.show_var
		# instance variable have scope in class method
		puts $global_var
		# puts local_var # error cant access
		puts @@class_var
		puts @instance_var
		puts CONST
	end

end



# classes and modules are considered as constants in ruby 
def VariableScope.show_var2
	puts $global_var
	puts @instance_var
	puts VariableScope::CONST
end

# puts "instance method call..."
# newobj = VariableScope.new 
# newobj.disp_var


# puts ""
# puts "class method call..."
# calling class method
# VariableScope.show_var



# instance variable --- variables that are used to set attributes values on an object  

VariableScope.show_var2