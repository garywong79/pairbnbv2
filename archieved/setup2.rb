require 'sqlite3'

# If you want to overwrite your database you will need
# to delete it before running this file
$db = SQLite3::Database.new "address_book1.db"

module AddressBook1DB
  def self.setup
    $db.execute(
      <<-SQL
        CREATE TABLE contacts(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          company VARCHAR(64) NOT NULL,
          phone_number INTEGER NOT NULL,
          email_address VARCHAR(64) NOT NULL
        );

      SQL
    )

    $db.execute(
       <<-SQL
        CREATE TABLE groups(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          group_name VARCHAR(64) NOT NULL
        );

     SQL
     )

  end

  def self.seed
    # Add a few records to your database when you start
    $db.execute(
      <<-SQL
        INSERT INTO contacts
          (first_name, last_name, company, phone_number,email_address)
        VALUES
          ('Gary','Wong','NextAcademy','012-222-0000','garywong@me.com');
        
      SQL
    )
$db.execute(
      <<-SQL
    INSERT INTO groups
          (group_name)
          VALUES
          ('Next-Sept15');

       SQL
    )
  end
end

class AddressBook
  # attr_reader :contacts, :groups
  # def initialize
  #   @contacts = contacts
  #   @groups = groups
  # end

  def addc(first_name,last_name,company,phone_number,email_address)
    $db.execute(
      <<-SQL
      INSERT INTO contacts (first_name,last_name,company,phone_number,email_address) 
      VALUES ('#{first_name}','#{last_name}','#{company}','#{phone_number}','#{email_address}');
      SQL
    )
  end

  def addg(group_name)
  $db.execute(
      <<-SQL
      INSERT INTO groups (group_name) 
      VALUES ('#{group_name}');
      SQL
    )
  end

  def change (email_address,id)
    $db.execute(
      <<-SQL
      UPDATE contacts SET email_address = '#{email_address}'
      WHERE id = '#{id}';
      SQL
      )
  end

  def deletec (id)
    $db.execute("DELETE FROM contacts WHERE id = #{id}")
  end

  # def deleteg
  # end


end

x = AddressBook.new
# p x.addc("Andy","Tan","Boston Group","012-999-9999","andytan@gmail.com")
# p x.addg("X-Men")
# p x.change("xmen@gmail.com","3")
# p x.deletec("5")

