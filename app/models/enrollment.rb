class Enrollment < ActiveRecord::Base
	validates :student_id, :section_id, {:presence => true}

	belongs_to :section
	belongs_to :student
end
