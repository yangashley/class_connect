class Point < ActiveRecord::Base
	validates :student_id, :teacher_id, :section_id, :value, {:presence => true}

	belongs_to :student
	belongs_to :teacher, class_name: "User"
end


# One - to - Many relationships:

# belongs_to method_name
# 1) assumes a table with the name method_name (class_name)
# 2) assumes a foreign_key of #{method_name}_id if you are the many (foreign_key)
# OR
#    assumes a foreign_key of #{me}_id if you are the one
   
   
# Many - to - Many relationships:

# has_many method_names
# 1) assumes a method called method_names on current model (through)
# 2) assumes a method on the join class that matches method_names (if not, correct with source)