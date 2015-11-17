class BankAccount
	attr_reader :type
	attr_accessor :customer_name

	def initialize(customer_name,type,acct_number)
		@customer_name = customer_name
		@type = type
		@acct_number = acct_number
	end

	def redacted_acct_number
		@acct_number.gsub(/[^\d]/, '').gsub(/\d(?=\d{4})/,'*') #remove symbol, then replace character with *
	end

	def to_s
		# display = "#{@type}, #{a@cct_number}"
		"#{@customer_name}:#{@type} - #{redacted_acct_number}"	
	end

	
	
end

my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239")
p "My account information is #{my_acct}"
my_acct.customer_name=("Gary")
p "My account information is #{my_acct}"


