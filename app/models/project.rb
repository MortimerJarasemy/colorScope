class Project < ActiveRecord::Base
	belongs_to :user
	has_many :guests
	has_many :comments
	has_one :palette
	accepts_nested_attributes_for :palette
	before_create :build_palette


end
