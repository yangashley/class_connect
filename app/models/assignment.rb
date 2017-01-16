class Assignment < ActiveRecord::Base
	validates :teacher_id, :section_id, {:presence => true}

	belongs_to :teacher, class_name: "User"
	belongs_to :section
end
