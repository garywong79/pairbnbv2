require 'csv'
require 'date'
require 'byebug'

class Person
  # Look at the above CSV file
  # What attributes should a Person object have?
  attr_reader :id,:first_name,:last_name,:email,:phone,:created_at

  def initialize (id,first_name,last_name,email,phone,created_at)
    @id =id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
end

class PersonParser
  attr_reader :file, :people
  
  def initialize(file)
    @file = file
    @people = nil
  end
  
  def people
    # If we've already parsed the CSV file, don't parse it again.
    # Remember: @people is +nil+ by default.
    return @people if @people # this avoid duplicated file
    @people =[]
    # We've never called people before, now parse the CSV file
    # and return an Array of Person objects here.  Save the
    # Array in the @people instance variable.
    CSV.foreach(@file, headers: true) do |row| # this is to open CSV file, header: true is remove header
      person = Person.new(row["id"],row["first_name"],row["last_name"],row["email"],row["phone"],row["created_at"])
      @people << person
      #initially @people is empty, so create a new object and push all the info into array
    end
    @people # you have to return array due to conditin of return @people if @people
  end

  def add_person(person) # link from 
    @people << person # push to array
  end

  def save
    CSV.open("@file", "wb") do |csv|
      @people.each do |person|
        csv << [person.id, person.first_name, person.last_name, person.email, person.phone, person.created_at]
        end
      end
  end
end

parser = PersonParser.new('people.csv')
gary = Person.new(202,"Gary","Wong","gary@wong.com","012-211-9090",Time.now)
parser.people
parser.add_person(gary)

puts "There are #{parser.people.size} people in the file '#{parser.file}'."

parser.save

puts parser.people.size == 201