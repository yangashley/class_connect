class Student < ActiveRecord::Base
  validates :first_name, :last_name, :presence => true

  has_many :teachers
  has_many :points
end
