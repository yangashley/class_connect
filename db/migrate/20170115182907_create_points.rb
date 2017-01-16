class CreatePoints < ActiveRecord::Migration
  def change
  	create_table :points do |t|
  		t.integer :student_id, null: false 
  		t.integer :teacher_id, null: false 
  		t.integer :section_id, null: false 
      t.integer :value, null: false, default: 0

  		t.timestamps(null: false)
  	end
  end
end
