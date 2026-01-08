=begin

block comments

Variables in Ruby
=====================

5 types of variable in Ruby

1) Global variables -- start with $ sign, these variables have scope globally, throughout the application
2) Local variables -- start with lowecase alphabet or _(underscore), these variables have scope locally, in a method, or block of code or class defination
3) Class variables -- start with @@ sign, these have scope only in the class defined, outside the class they have no scope
4) Instance variables -- start with @ sign, these variables are used to create attributes on an object
5) CONSTANTS -- start with CAPITAL LETTER, these are also global variables, they mean that the value remains constant 

=end


class VariableScopes

	$global_variable = "GLOBAL VARIABLE"
	local_variable = "LOCAL VARIABLE"
	@@class_variable = "CLASS VARIABLE"
	@instance_variable = "INSTANCE VARIABLE"
	CONSTANT = "CONSTANT"
	PI = 3.14

	# puts local_variable

	# methods which are called on/by an object are called
	# instance method
	def display_variables
		# local variable does not have scope in here
		# bcz its not defined in this method
		# puts local_variable # error
		local_variable1 = "LOCAL VARIABLE in method"
		puts $global_variable
		puts local_variable1
		puts @@class_variable
		puts @instance_variable.inspect # instance variable do not have scope in instance methods
		puts CONSTANT
		# puts PI
	end

	# class methods (static methods)
	# do not require an object to be called
	# these are called directly by class name
	def VariableScopes.show_variables
		local_variable1 = "LOCAL VARIABLE in class method"
		puts $global_variable
		puts local_variable1
		puts @@class_variable
		puts @instance_variable # instance variable have scope in class methods
		puts CONSTANT
	end

    # same as above class method
    def self.show_variables
        local_variable1 = "LOCAL VARIABLE in class method"
        puts $global_variable
        puts local_variable1
        puts @@class_variable
        puts @instance_variable # instance variable have scope in class methods
        puts CONSTANT
    end
	
	# puts local_variable
end # class ends here

# declaring class method outside the class
def VariableScopes.show_variables2
	puts $global_variable
	# puts @@class_variable # no scope since outside the class
	puts @instance_variable 
	puts VariableScopes::CONSTANT # scope resolution operator to get constant value outside the class
end

# newobj = VariableScopes.new
# newobj.display_variables

# VariableScopes::show_variables
# VariableScopes.show_variables
# VariableScopes::show_variables2
# VariableScopes.show_variables2


# Instance variable -- Variables that are used to set attribute to an object
# classes and modules are considered as constants in Ruby