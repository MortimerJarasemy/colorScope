class Guest < ActiveRecord::Migration
  def change
	  create_table :guests do |t|
 	 t.integer :project_id
	 t.integer :user_id
 	end
  end
end
