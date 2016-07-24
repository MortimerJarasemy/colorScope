class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :background_dark_color
      t.string :background_light_color
      t.string :dark_color1
      t.string :dark_color2
      t.string :light_color1
      t.string :light_color2
      t.belongs_to :project, index: true
      t.timestamps null: false
    end
  end
end
