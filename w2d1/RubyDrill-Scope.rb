#$local_var = global variale
#@@local_var = class variable
#@local_var

local_var = 3
$global_var = "Global"
MY_NAME = 'Gary'

# def get_local_var
# 	local_var = 5
# end


# p local_var # return 3, priority go to local variable eventhough same variable name within the method
# p get_local_var # return 5

class BasicClass
	@@class_var = 9

	def initialize
		@instance_var = 6
		
	end

	def get_local_var
		local_var = 5
	end

	def get_instance_var
		@instance_var
	end

	def get_class_var
		@@class_var
	end

	def set_instance_var=(num)
		@instance_var = num
		
	end

	def set_class_var=(num)
		@@class_var = num
	end

end

 	bclass = BasicClass.new # return as object
p bclass.get_instance_var
p bclass.get_class_var
p bclass.set_instance_var=(8)
p bclass.set_class_var=(2)
p bclass.get_instance_var
p bclass.get_class_var

# bclass.instance_var = 9