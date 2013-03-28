class Worker < ActiveRecord::Base
  attr_accessible :email, :job, :name, :phone, :region, :skype, :photo, :locale

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
