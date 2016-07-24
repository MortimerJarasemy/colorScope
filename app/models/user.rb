class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :projects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
		 has_attached_file :avatar, styles: {
	      medium: "64x63>",
	      thumb: "32x32>"
		  }, default_url: "/images/:style/missing.png"

		 validates_attachment :avatar,
		  presence: true,
		  content_type: { content_type: "image/jpeg" },
		  size: { in: 0..10.kilobytes }
		  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
