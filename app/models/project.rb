class Project < ActiveRecord::Base
	belongs_to :user
	has_many :guests
	has_many :comments
	has_one :palette, :dependent => :destroy
	accepts_nested_attributes_for :palette
end
