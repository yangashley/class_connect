class CreateAssignments < ActiveRecord::Migration
  def change
  	create_table :assignments do |t|
  		t.integer :section_id, null: false 
  		t.integer :teacher_id, null: false 

  		t.timestamps(null: false)
  	end
  end
end
