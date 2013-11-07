class Screenshot < ActiveRecord::Base
	include Paperclip
	attr_accessible :image
	belongs_to :application
	has_attached_file :image,
	:styles => {
	  :thumb=> "100x100#",
	  :small  => "300x300>",
	  :large => "600x600>"
	}
# attr_accessible :title, :body
end
