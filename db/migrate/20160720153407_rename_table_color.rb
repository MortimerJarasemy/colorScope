class RenameTableColor < ActiveRecord::Migration
  def change
	  rename_table :colors, :palettes
  end
end
