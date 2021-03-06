class Product < ActiveRecord::Base
	attr_accessible :description, :locale, :title, :photo

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
