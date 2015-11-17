class User < ActiveRecord::Base
  has_many :questions

	validates :email, presence: true, uniqueness: true,
    format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/ }
  validates :username, presence: true
  validates :password, presence: true

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.password == password
      return user
    else
      nil
    end
  end
end
