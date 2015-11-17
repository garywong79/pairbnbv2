# file name must be singular

#Model - Set Relationshiop

#user has many questions, questions belong to one user
has_many :questions 

#question has many answer, belong to users
belongs_to :user
has_many :answers, :dependent => :destroy

#student has many teacher, teachers long to many students
has_many :teacher_students
has_many :teachers, through: :teacher_students

#roll back
before_create :shorten

# Validation

validates :question_detail, presence: true #valiation not empty field
validates :email, presence: true, uniqueness: true #email validation
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i #email validation

require 'valid_url'
validates_format_of :long_url, :with => URI::regexp(%w(http https)) #url validations