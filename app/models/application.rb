class Application < ActiveRecord::Base
  	attr_accessible :android_link, :description, :ios_link, :locale, :title, :photo, :web_link

  	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  	has_many :screenshots, :dependent => :destroy
	accepts_nested_attributes_for :screenshots, :allow_destroy => true
end