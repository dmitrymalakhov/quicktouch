class Application < ActiveRecord::Base
  	attr_accessible :android_link, :description, :ios_link, :locale, :title, :photo, :web_link, :screenshots_attributes, :image_file_name, :image_content_type, :image_file_size, :image_updated_at

  	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  	has_many :screenshots, :dependent => :destroy
	accepts_nested_attributes_for :screenshots, :allow_destroy => true, :reject_if => :all_blank
end