class Upload < ActiveRecord::Base
  attr_accessible :name, :logo
  has_attached_file :logo, 
  		:styles => {:medium => "300x300>", :max => "480x800>"}
  validates :name, :logo, :presence => true
end
