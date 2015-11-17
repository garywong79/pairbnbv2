class Company
  attr_reader :employees
  attr_accessor :company_name
 
  def initialize(name)
    @company_name  = name
    @employees   = []
  end
 
 
  def add_employee(employee)
    @employees << employee
  end
 
end
 
 
class Employee
  attr_reader :id
  attr_accessor :name, :position
 

  def initialize(name, position)
    @name     = name
    @position = position
    @id       = rand(100_000_000).to_s.insert(2, '-').insert(6, '-')
  end
 

end
 
code_division = Company.new("Code Division")

josh = Employee.new("Josh", "Master Of The Bootiverse")

code_division.add_employee(josh)

puts (p "#{code_division.company_name} - #{code_division.employees.first.name}: #{code_division.employees.first.position}") == "Code Division - Josh: Master Of The Bootiverse"

josh.name = "Not Cheryl Yeoh"
josh.position = "Master of Everything"

code_division.company_name = "MaGIC"

puts (p "#{code_division.company_name} - #{code_division.employees.first.name}: #{code_division.employees.first.position}") == "MaGIC - Not Cheryl Yeoh: Master of Everything"