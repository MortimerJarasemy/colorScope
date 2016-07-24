class RenameTableGuests < ActiveRecord::Migration
  def change
	  rename_table :guests, :roles
  end
end
