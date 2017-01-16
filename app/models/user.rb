require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates :first_name, :last_name :email, :hashed_password, :presence => true
  validates :email, :uniqueness => true

  has_many :students
  has_many :points

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    hashed_password = Password.create(new_password)
    self.password_hash = hashed_password
  end
  
  def self.authenticate(email, user_password)
    person = User.find_by(email: email)
    if person.password == user_password
      person
    else
      nil
    end
  end

end

