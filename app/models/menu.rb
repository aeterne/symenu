class Menu < ActiveRecord::Base
  attr_accessible :description, :name, :price, :category
  has_many :categorizations
  has_many :categories, :through => :categorizations
end
