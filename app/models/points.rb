class Points < ActiveRecord::Base
	validates :student_id, :teacher_id :class_id, :type, :presence => true

	belongs_to :student
	belongs_to :teacher, class_name: "User"
end
