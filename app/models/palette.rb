class Palette < ActiveRecord::Base
	#   validates :background_dark_color, presence: true
	#   validates_format_of :background_dark_color, :with => /[a-z0-9]/i, :on => :create
	#   validates :background_dark_color, length: { minimum: 6 }
	#   validates :background_dark_color, length: { maximum: 6 }
	  #
	#   validates :background_light_color, presence: true
	#   validates_format_of :background_light_color, :with => /[a-z0-9]/i, :on => :create
	#   validates :background_light_color, length: { minimum: 6 }
	#   validates :background_light_color, length: { maximum: 6 }
	  #
	#   validates :dark_color1, presence: true
	#   validates_format_of :dark_color1, :with => /[a-z0-9]/i, :on => :create
	#   validates :dark_color1, length: { minimum: 6 }
	#   validates :dark_color1, length: { maximum: 6 }
	  #
	#   validates :dark_color2, presence: true
	#   validates_format_of :dark_color2, :with => /[a-z0-9]/i, :on => :create
	#   validates :dark_color2, length: { minimum: 6 }
	#   validates :dark_color2, length: { maximum: 6 }
	  #
	#   validates :light_color1, presence: true
	#   validates_format_of :light_color1, :with => /[a-z0-9]/i, :on => :create
	#   validates :light_color1, length: { minimum: 6 }
	#   validates :light_color1, length: { maximum: 6 }
	  #
	#   validates :light_color2, presence: true
	#   validates_format_of :light_color2, :with => /[a-z0-9]/i, :on => :create
	#   validates :light_color2, length: { minimum: 6 }
	#   validates :light_color2, length: { maximum: 6 }

	  belongs_to :project
end
