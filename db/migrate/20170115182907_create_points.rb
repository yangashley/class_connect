class CreatePoints < ActiveRecord::Migration
  def change
  	create_table :points do |t|
  		t.integer :student_id, null: false 
  		t.integer :teacher_id, null: false 
  		t.integer :class_id, null: false 
  		t.string :type, null: false 

  		t.timestamps(null: false)
  	end
  end
end
