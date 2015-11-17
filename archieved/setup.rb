require 'sqlite3'

# If you want to overwrite your database you will need
# to delete it before running this file
$db = SQLite3::Database.new "students.db"

module StudentDB
  def self.setup
    $db.execute(
      <<-SQL
        CREATE TABLE students (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,

          -- add the additional attributes here!

          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute(
      <<-SQL
        INSERT INTO students
          (first_name, last_name, created_at, updated_at)
        VALUES
          ('Brick','Thornton',DATETIME('now'), DATETIME('now'));

        -- Create two more students who are at least as cool as this one.
      SQL
    )
  end
end

class Student
	attr_reader :student
	def initialize
	@student = student
	end

	def all
		$db.execute("SELECT * FROM students")
	end

	def delete(id)
		$db.execute("DELETE FROM students WHERE id = #{id}")
	end

	def add(first_name,last_name)
		$db.execute(
			<<-SQL
			INSERT INTO students (first_name,last_name,created_at,updated_at) 
			VALUES ("#{first_name}","#{last_name}",DATETIME('now'), DATETIME('now'));
			SQL
		)
	end

	def first_name(first_name)
		$db.execute(
			<<-SQL
			SELECT * FROM students WHERE first_name = "#{first_name}";
			SQL
			)
	end

	def attribute(id)
		$db.execute(
			<<-SQL
			SELECT * FROM students WHERE id = "#{id}";
			SQL
			)
	end
end

x = Student.new
# x.add("gary", "wong")
# p x.delete("4")
# p x.attribute("7")
p x.first_name("gary")
