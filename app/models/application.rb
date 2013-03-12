class Application < ActiveRecord::Base
  attr_accessible :android_link, :description, :ios_link, :locale, :title, :photo

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
