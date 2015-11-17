class Person
  attr_accessor :id

  def initialize (person = {})
    @id = person.fetch(:id)
  end
end
