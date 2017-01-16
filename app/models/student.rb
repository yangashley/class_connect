class Student < ActiveRecord::Base
  validates :first_name, :last_name, {:presence => true}

  has_many :points
  has_many :teachers, through: :points
  has_many :enrollments
  has_many :sections, through: :enrollments
end
