require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates :first_name, :last_name, :email, :hashed_password, {:presence => true}
  validates :email, {:uniqueness => true}

  has_many :points, foreign_key: :teacher_id
  has_many :students, through: :points
  has_many :sections, through: :assignments
  has_many :assignments, foreign_key: :teacher_id

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    password_hash = Password.create(new_password)
    self.hashed_password = password_hash
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

