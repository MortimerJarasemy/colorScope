class Project < ActiveRecord::Migration
  def change
	  create_table :projects do |t|
		  t.string :name
		  t.string :option
		  t.timestamps
	  end
  end
end
