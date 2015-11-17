require 'byebug'
require 'csv'
require 'date'

class Person
  attr_reader :id, :first_name, :last_name, :email, :phone, :created_at
  def initialize(id, first_name, last_name, email, phone, created_at)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
end

class PersonParser
  attr_reader :file
  
  def initialize(file)
    @file = file
    @people = nil
  end
  
  def people
    # If we've already parsed the CSV file, don't parse it again.
    # Remember: @people is +nil+ by default.
    return @people if @people
    @people = []

    CSV.foreach(@file, headers: true) do |row|
      person = Person.new(row["id"], row["first_name"], row["last_name"], 
        row["email"], row["phone"], row["created_at"])
      @people << person
    end
    @people
  end

  def add_person(person)
    @people << person
  end

  def save
    CSV.open(@file, "wb") do |csv|
      @people.each do |person|
        csv << [person.id, person.first_name, person.last_name, person.email, person.phone, person.created_at]
      end
    end
  end
end

  

parser = PersonParser.new('people.csv')

puts "There are #{parser.people.size} people in the file '#{parser.file}'."

gary = Person.new(201, "Gary", "Wong", "gary@wong.com", "1-548-366-6273", Time.now)
parser.add_person(gary)
parser.save

puts parser.people.size == 201