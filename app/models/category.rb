class Category < ActiveRecord::Base
  attr_accessible :information, :name, :photo, :menus
  has_many :categorizations
  has_many :menus, :through => :categorizations
  has_attached_file :photo, 
  			:styles => { :medium => "300x300>", :thumb => "100x100>" }
  			#:url => "/photos/:class/:attachment/:id/:style/:basename.:extension",
  			#:path => "/photos/:class/:attachment/:id/:style/:basename.:extension"


  # validates :information, :name, :presence => true
  # Path = Application Directory
  # Url = Users will use to render
end
