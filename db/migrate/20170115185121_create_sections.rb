class CreateSections < ActiveRecord::Migration
  def change
  		create_table :sections do |t|
  		t.string :title, null: false 

  		t.timestamps(null: false)
  	end
  end
end

