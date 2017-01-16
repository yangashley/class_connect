class Section < ActiveRecord::Base
  validates :title, {:presence => true}

  has_many :assignments
  has_many :teachers, through: :assignments
  has_many :enrollments
  has_many :students, through: :enrollments
  
end
